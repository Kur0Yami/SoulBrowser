.class Lcom/mycompany/app/view/MyFindView$9;
.super Ljava/lang/Object;
.implements Landroid/widget/TextView$OnEditorActionListener;
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
  .line 322
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView$9;->this$0:Lcom/mycompany/app/view/MyFindView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 325
    iget-object p1, p0, Lcom/mycompany/app/view/MyFindView$9;->this$0:Lcom/mycompany/app/view/MyFindView;
  .line 326
    invoke-virtual { p1 }, Lcom/mycompany/app/view/MyFindView;->usesCustomFind()Z
    move-result p2
    const/4 p3, 1
    if-eqz p2, :L0
  .line 327
    invoke-virtual { p1, p3 }, Lcom/mycompany/app/view/MyFindView;->C(Z)V
    return p3
  :L0
  .line 330
    iget-object p1, p1, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz p1, :L1
  .line 332
    invoke-virtual { p1, p3 }, Landroid/webkit/WebView;->findNext(Z)V
  :L1
    return p3
.end method
