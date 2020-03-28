from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User,auth
from .models import Review
from .models import Product
import datetime
from . import model
import matplotlib.pyplot as plt
from sklearn.metrics import precision_recall_fscore_support
import itertools
import numpy as np
# Create your views here.

def index(request):
    return render(request,'index.html')

def shop(request):
    if request.method == 'POST':
        range1=request.POST.get('range1','0')
        range1=int(range1)
        range2=request.POST.get('range2','0')
        range1=int(range1)
        prod=Product.objects.filter(Price__gte=range1,Price__lte=range2)
        parameter='None'
        return render(request,'shop.html',{'prods':prod,'parameter':parameter})
    else:
        parameter = request.GET.get('Categ','None')
        prod=Product.objects.all()
        cate=Product.objects.values('Category').distinct()
        if parameter!= 'None':
            return render(request,'shop.html',{'prods':prod,'cates':cate,'parameter':parameter})
        return render(request,'shop.html',{'prods':prod,'cates':cate,'parameter':parameter})

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact.html')

def cart(request):
    return render(request,'cart.html')

def productdetail(request):
    if request.method == 'POST':
        ReviewField=request.POST.get('ReviewField1','')
        Rating=request.POST.get('rate','0')
        parameter=request.POST.get('para','0')
        parameter=int(parameter)       
        filename = "./demo_model.pickle"
        #m = model.Model("./raw_data.csv")
        #m.save(filename)
        #print("Model Trained Successful")
        loaded_model = model.Model.load(filename)
        print(loaded_model.accuracy_score())
        cm = loaded_model.confusion_matrix()
        print(cm)
        
        st=loaded_model.predict(R_id=int(request.user.id),p_id=414,rating=float(Rating),label=-1,date=str("2012-09-23"))
        print(st)
        messages.info(request,st)
        #print(loaded_model.final_groups.final_df)
        
        store_Review=Review(ReviewerID_id=request.user.id,ReviewDesc=ReviewField,prod_id=parameter,rating=Rating,date=datetime.date.today(),Spam=st)
        store_Review.save()
        print(precision_recall_fscore_support(loaded_model.testLabel, loaded_model.predictions, average='weighted'))
        
        #plot_confusion_matrix(cm = cm, normalize    = False,target_names = ['Not Spam', 'Spam'],title = "Confusion Matrix")

        return redirect("product-detail.html?product=%d"%parameter)
    else:
        parameter = request.GET.get('product','0')
        parameter=int(parameter)
        rev=reversed(Review.objects.all())
        prod=Product.objects.get(id=parameter)
        prods=Product.objects.all()
        Count = Review.objects.filter(prod_id=parameter).count()
        return render(request,'product-detail.html',{'Count':Count,'prods':prods,'prod':prod,'parameter':parameter,'revs':rev})

def plot_confusion_matrix(cm,
                          target_names,
                          title='Confusion matrix',
                          cmap=None,
                          normalize=True):

    accuracy = np.trace(cm) / float(np.sum(cm))
    misclass = 1 - accuracy

    if cmap is None:
        cmap = plt.get_cmap('Blues')

    plt.figure(figsize=(8, 6))
    plt.imshow(cm, interpolation='nearest', cmap=cmap)
    plt.title(title)
    plt.colorbar()

    if target_names is not None:
        tick_marks = np.arange(len(target_names))
        plt.xticks(tick_marks, target_names, rotation=45)
        plt.yticks(tick_marks, target_names)

    if normalize:
        cm = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]


    thresh = cm.max() / 1.5 if normalize else cm.max() / 2
    for i, j in itertools.product(range(cm.shape[0]), range(cm.shape[1])):
        if normalize:
            plt.text(j, i, "{:0.4f}".format(cm[i, j]),
                     horizontalalignment="center",
                     color="white" if cm[i, j] > thresh else "black")
        else:
            plt.text(j, i, "{:,}".format(cm[i, j]),
                     horizontalalignment="center",
                     color="white" if cm[i, j] > thresh else "black")


    plt.tight_layout()
    plt.ylabel('True label')
    plt.xlabel('Predicted label\naccuracy={:0.4f}; misclass={:0.4f}'.format(accuracy, misclass))
    plt.show()

def checkout(request):
    return render(request,'checkout.html')

def ordercomplete(request):
    return render(request,'order-complete.html')

def wishlist(request):
    return render(request,'add-to-wishlist.html')

def register(request):
    if request.method == 'POST':
        name= request.POST.get('name'," ")
        email= request.POST.get('email',' ')
        password1= request.POST.get('password1',' ')
        password2= request.POST.get('password2',' ')

        if password1 == password2:
            if User.objects.filter(username=name).exists():
                messages.info(request,'Username Taken')
                return redirect('register.html')
            elif User.objects.filter(email=email).exists():
                messages.info(request,"email taken")
                return redirect('register.html')
            else:
                user=User.objects.create_user(username=name,password=password1,email=email)
                user.save()
                return redirect("login.html")
        else:
            messages.info(request,"password not matching")
            return redirect('register.html')
        return redirect('index.html')
    else:
        return render(request,'register.html')

def login(request):
    if request.method=='POST':
        username=request.POST.get("username")
        password=request.POST.get("password")
        user=auth.authenticate(username=username,password=password)
        if user is not None:
            auth.login(request,user)
            return redirect("index.html")
        else:
            messages.info(request,'invalid credentials')
            return redirect("login.html")
    else:
        return render(request,'login.html')     
def logout(request):
    auth.logout(request)
    return redirect('index.html')
