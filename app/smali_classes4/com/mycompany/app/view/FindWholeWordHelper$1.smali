.class Lcom/mycompany/app/view/FindWholeWordHelper$1;
.super Ljava/lang/Object;
.implements Landroid/webkit/ValueCallback;
.source "FindWholeWordHelper.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/view/FindWholeWordHelper;->search(Landroid/webkit/WebView;Ljava/lang/String;ZZLandroid/webkit/ValueCallback;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/webkit/ValueCallback<",
    "Ljava/lang/String;",
    ">;"
  }
.end annotation

.field final synthetic val$callback:Landroid/webkit/ValueCallback;

.method constructor <init>(Landroid/webkit/ValueCallback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .line 112
    iput-object p1, p0, Lcom/mycompany/app/view/FindWholeWordHelper$1;->val$callback:Landroid/webkit/ValueCallback;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      4096
    }
    names = {
      null
    }
  .end annotation
  .registers 2
  .line 112
    check-cast p1, Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/FindWholeWordHelper$1;->onReceiveValue(Ljava/lang/String;)V
    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
  .registers 3
  .line 115
    iget-object v0, p0, Lcom/mycompany/app/view/FindWholeWordHelper$1;->val$callback:Landroid/webkit/ValueCallback;
    if-nez v0, :L0
    return-void
  :L0
  .line 118
    invoke-static { p1 }, Lcom/mycompany/app/view/FindWholeWordHelper;->parseCount(Ljava/lang/String;)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-interface { v0, p1 }, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    return-void
.end method
