.class Lcom/mycompany/app/view/MyFindView$3;
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
  .line 228
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$3;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
  .registers 3
  .line 231
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$3;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 232
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
    xor-int/lit8 v0, v0, 1
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
  .line 233
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->A()V
  .line 234
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->B()V
    return-void
.end method
