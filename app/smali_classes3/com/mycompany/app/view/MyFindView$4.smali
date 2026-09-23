.class Lcom/mycompany/app/view/MyFindView$4;
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
  .line 237
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$4;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
  .registers 3
  .line 240
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$4;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 241
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyFindView;->x:Z
    xor-int/lit8 v0, v0, 1
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyFindView;->x:Z
  .line 242
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->A()V
  .line 243
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->B()V
    return-void
.end method
