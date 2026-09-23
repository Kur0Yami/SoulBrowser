.class Lcom/mycompany/app/web/TextSelectMenu$4;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->apply(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$actionMode:Landroid/view/ActionMode;

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.method constructor <init>(Landroid/view/ActionMode;Lcom/mycompany/app/web/WebViewActivity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .line 187
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$4;->val$actionMode:Landroid/view/ActionMode;
    iput-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$4;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 2
  :L0
  .line 191
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$4;->val$actionMode:Landroid/view/ActionMode;
    invoke-virtual { p1 }, Landroid/view/ActionMode;->finish()V
  :L1
  .line 194
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$4;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-static { p1 }, Lcom/mycompany/app/web/TextSelectMenu;->edit(Lcom/mycompany/app/web/WebViewActivity;)V
    const/4 p1, 1
    return p1
.end method
