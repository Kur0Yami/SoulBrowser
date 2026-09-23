.class Lcom/mycompany/app/view/MyFindView$7;
.super Ljava/lang/Object;
.implements Landroid/webkit/WebView$FindListener;
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
  .line 274
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$7;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onFindResultReceived(IIZ)V
  .registers 7
    if-eqz p3, :L2
  .line 278
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView$7;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 279
    invoke-virtual { p3 }, Lcom/mycompany/app/view/MyFindView;->usesCustomFind()Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p3, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    if-nez v0, :L0
    goto :L2
  :L0
    if-nez p2, :L1
  .line 283
    invoke-virtual { p3 }, Lcom/mycompany/app/view/MyFindView;->d()V
    return-void
  :L1
  .line 286
    iget-object v0, p3, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    const/4 v1, 1
    add-int/2addr p1, v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string v2, " / "
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lcom/mycompany/app/view/MyTextFast;->setText(Ljava/lang/CharSequence;)V
  .line 287
    iget-object p1, p3, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    const/high16 p2, 0x3f800000
    invoke-virtual { p1, p2 }, Lcom/mycompany/app/view/MyTextFast;->setAlpha(F)V
  .line 288
    iget-object p1, p3, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
  .line 289
    iget-object p1, p3, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
    nop
  :L2
    return-void
.end method
