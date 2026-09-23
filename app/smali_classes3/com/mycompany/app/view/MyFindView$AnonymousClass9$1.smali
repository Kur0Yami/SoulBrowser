.class Lcom/mycompany/app/view/MyFindView$AnonymousClass9$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/view/MyFindView$AnonymousClass9;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lcom/mycompany/app/view/MyFindView$AnonymousClass9;

.method constructor <init>(Lcom/mycompany/app/view/MyFindView$AnonymousClass9;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784
    }
    names = {
      null
    }
  .end annotation
  .registers 2
  .line 85
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9$1;->this$1:Lcom/mycompany/app/view/MyFindView$AnonymousClass9;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final run()V
  .registers 3
  .line 88
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9$1;->this$1:Lcom/mycompany/app/view/MyFindView$AnonymousClass9;
    iget-object v0, v0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 89
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    if-nez v1, :L0
    return-void
  :L0
  .line 93
    iget-object v0, v0, Lcom/mycompany/app/view/MyFindView;->c:Landroid/content/Context;
    invoke-static { v0, v1 }, Lcom/mycompany/app/main/MainUtil;->c8(Landroid/content/Context;Landroid/view/View;)V
    return-void
.end method
