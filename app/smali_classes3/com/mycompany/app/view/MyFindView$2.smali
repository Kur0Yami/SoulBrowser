.class Lcom/mycompany/app/view/MyFindView$2;
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
  .line 211
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$2;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
  .registers 5
  .line 214
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$2;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 215
    iget-object v0, p1, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L0
    const/16 v1, 8
  .line 217
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V
  .line 218
    iget-object v0, p1, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    const/4 v1, 0
    move-object v2, v1
    check-cast v2, Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyEditPure;->setText(Ljava/lang/CharSequence;)V
  .line 219
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->d()V
  .line 220
    iget-object p1, p1, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz p1, :L0
  .line 222
    invoke-virtual { p1 }, Landroid/webkit/WebView;->clearMatches()V
  .line 223
    invoke-static { p1 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  :L0
    return-void
.end method
