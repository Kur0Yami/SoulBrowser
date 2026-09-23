.class Lcom/mycompany/app/view/MyFindView$5;
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
  .line 246
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$5;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
  .registers 4
  .line 249
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$5;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 250
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->usesCustomFind()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 251
    invoke-virtual { p1, v1 }, Lcom/mycompany/app/view/MyFindView;->C(Z)V
    return-void
  :L0
  .line 254
    iget-object p1, p1, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz p1, :L1
  .line 256
    invoke-virtual { p1, v1 }, Landroid/webkit/WebView;->findNext(Z)V
  :L1
    return-void
.end method
