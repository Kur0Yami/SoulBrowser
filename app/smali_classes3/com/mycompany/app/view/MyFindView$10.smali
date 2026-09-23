.class Lcom/mycompany/app/view/MyFindView$10;
.super Ljava/lang/Object;
.implements Landroid/webkit/ValueCallback;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/view/MyFindView;->B()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/webkit/ValueCallback<",
    "Ljava/lang/Integer;",
    ">;"
  }
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
  .line 564
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$10;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onReceiveValue(Ljava/lang/Integer;)V
  .registers 7
  .line 567
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView$10;->this$0:Lcom/mycompany/app/view/MyFindView;
    const/4 v1, 0
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 568
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
  :L1
  .line 569
    iput p1, v0, Lcom/mycompany/app/view/MyFindView;->y:I
    if-gtz p1, :L2
  .line 571
    iput v1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
  .line 572
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyFindView;->d()V
    return-void
  :L2
    const/4 v1, 1
  .line 575
    iput v1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
  .line 576
    iget-object v2, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    if-eqz v2, :L3
  .line 577
    iget-object v2, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    new-instance v3, Ljava/lang/StringBuilder;
    const-string v4, "1 / "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Lcom/mycompany/app/view/MyTextFast;->setText(Ljava/lang/CharSequence;)V
  .line 578
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    const/high16 v2, 0x3f800000
    invoke-virtual { p1, v2 }, Lcom/mycompany/app/view/MyTextFast;->setAlpha(F)V
  .line 579
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
  .line 580
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
  :L3
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
  .line 564
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView$10;->onReceiveValue(Ljava/lang/Integer;)V
    return-void
.end method
