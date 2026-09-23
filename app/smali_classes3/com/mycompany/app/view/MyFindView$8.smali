.class Lcom/mycompany/app/view/MyFindView$8;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/view/MyFindView;->b(IIZ)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/mycompany/app/view/MyFindView;

.method constructor <init>(Lcom/mycompany/app/view/MyFindView;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784
    }
    names = {
      null
    }
  .end annotation
  .registers 2
  .line 294
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$8;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
  .registers 4
  .line 297
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView$8;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 298
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    if-eqz v1, :L2
  .line 299
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-eqz p1, :L1
  .line 300
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    const/16 v1, 8
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V
  .line 301
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyFindView;->d()V
  .line 302
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz p1, :L0
  .line 304
    invoke-virtual { p1 }, Landroid/webkit/WebView;->clearMatches()V
  .line 305
    invoke-static { p1 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  :L0
    return-void
  :L1
  .line 309
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    const/4 v1, 0
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V
  .line 310
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyFindView;->B()V
  :L2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
    return-void
.end method
