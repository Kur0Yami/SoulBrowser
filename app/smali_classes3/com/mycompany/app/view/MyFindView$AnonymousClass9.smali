.class Lcom/mycompany/app/view/MyFindView$AnonymousClass9;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/mycompany/app/view/MyFindView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "AnonymousClass9"
.end annotation

.field final synthetic this$0:Lcom/mycompany/app/view/MyFindView;

.method public constructor <init>(Lcom/mycompany/app/view/MyFindView;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784
    }
    names = {
      null
    }
  .end annotation
  .registers 2
  .line 58
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final run()V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L2
  .registers 5
  .line 63
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 64
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    if-nez v1, :L0
    return-void
  :L0
  .line 68
    iget-object v2, v0, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;
    const/4 v3, 0
  .line 69
    iput-object v3, v0, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;
  .line 70
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :L3
  .line 74
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyEditPure;->setText(Ljava/lang/CharSequence;)V
  :L1
  .line 76
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual { v1, v0 }, Lcom/mycompany/app/view/MyEditPure;->setSelection(I)V
  :L2
    return-void
  :L3
  .line 83
    invoke-virtual { v1 }, Lcom/mycompany/app/view/MyEditPure;->requestFocus()Z
  .line 84
    new-instance v1, Lcom/mycompany/app/view/MyFindView$AnonymousClass9$1;
    invoke-direct { v1, p0 }, Lcom/mycompany/app/view/MyFindView$AnonymousClass9$1;-><init>(Lcom/mycompany/app/view/MyFindView$AnonymousClass9;)V
    const-wide/16 v2, 200
    invoke-virtual { v0, v1, v2, v3 }, Lcom/mycompany/app/view/MyFindView;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
