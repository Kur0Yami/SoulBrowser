.class Lcom/mycompany/app/view/MyFindView$11;
.super Ljava/lang/Object;
.implements Landroid/webkit/ValueCallback;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/view/MyFindView;->C(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/webkit/ValueCallback<",
    "Ljava/lang/Boolean;",
    ">;"
  }
.end annotation

.field final synthetic this$0:Lcom/mycompany/app/view/MyFindView;

.field final synthetic val$forward:Z

.method constructor <init>(Lcom/mycompany/app/view/MyFindView;Z)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784,
      4112
    }
    names = {
      null,
      null
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .line 595
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyFindView$11;->val$forward:Z
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$11;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onReceiveValue(Ljava/lang/Boolean;)V
  .registers 5
  .line 598
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView$11;->this$0:Lcom/mycompany/app/view/MyFindView;
    if-eqz p1, :L3
  .line 599
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    if-eqz p1, :L3
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->y:I
    if-gtz p1, :L0
    goto :L3
  :L0
  .line 602
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFindView$11;->val$forward:Z
    const/4 v1, 1
    if-eqz p1, :L1
  .line 603
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    add-int/2addr p1, v1
    iput p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
  .line 604
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    iget v2, v0, Lcom/mycompany/app/view/MyFindView;->y:I
    if-le p1, v2, :L2
  .line 605
    iput v1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    goto :L2
  :L1
  .line 608
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    sub-int/2addr p1, v1
    iput p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
  .line 609
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    if-ge p1, v1, :L2
  .line 610
    iget p1, v0, Lcom/mycompany/app/view/MyFindView;->y:I
    iput p1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
  :L2
  .line 613
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    if-eqz p1, :L3
  .line 614
    iget-object p1, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    iget v1, v0, Lcom/mycompany/app/view/MyFindView;->z:I
    iget v0, v0, Lcom/mycompany/app/view/MyFindView;->y:I
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " / "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcom/mycompany/app/view/MyTextFast;->setText(Ljava/lang/CharSequence;)V
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
  .line 595
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView$11;->onReceiveValue(Ljava/lang/Boolean;)V
    return-void
.end method
