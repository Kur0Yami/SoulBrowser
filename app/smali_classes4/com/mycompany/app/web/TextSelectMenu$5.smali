.class Lcom/mycompany/app/web/TextSelectMenu$5;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->apply(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.method constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .line 201
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$5;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 2
  .line 204
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$5;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->l9:Landroid/view/ActionMode;
    if-eqz v0, :L1
  :L0
  .line 207
    invoke-virtual { v0 }, Landroid/view/ActionMode;->invalidateContentRect()V
  :L1
    return-void
.end method
