.class Lcom/mycompany/app/view/MyFindView$1;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
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
  .line 202
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$1;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
  .registers 2
  .line 205
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$1;->this$0:Lcom/mycompany/app/view/MyFindView;
    iget-object p1, p1, Lcom/mycompany/app/view/MyFindView;->f:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;
    if-eqz p1, :L0
  .line 207
    invoke-interface { p1 }, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V
  :L0
    return-void
.end method
