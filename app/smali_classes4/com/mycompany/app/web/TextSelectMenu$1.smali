.class Lcom/mycompany/app/web/TextSelectMenu$1;
.super Landroid/view/ActionMode$Callback2;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->wrap(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$host:Landroid/view/View;

.field final synthetic val$original2:Landroid/view/ActionMode$Callback2;

.method constructor <init>(Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
  .registers 3
  .line 64
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    iput-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$host:Landroid/view/View;
    invoke-direct { p0 }, Landroid/view/ActionMode$Callback2;-><init>()V
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
  .registers 4
  .line 83
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    invoke-virtual { v0, p1, p2 }, Landroid/view/ActionMode$Callback2;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 67
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    invoke-virtual { v0, p1, p2 }, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    move-result p2
    if-eqz p2, :L0
  .line 69
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$host:Landroid/view/View;
    invoke-static { v0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->applyFrom(Landroid/view/View;Landroid/view/ActionMode;)V
  :L0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
  .registers 3
  .line 88
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    invoke-virtual { v0, p1 }, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 5
  .line 93
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    invoke-virtual { v0, p1, p2, p3 }, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 76
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$original2:Landroid/view/ActionMode$Callback2;
    invoke-virtual { v0, p1, p2 }, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .line 77
    iget-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$1;->val$host:Landroid/view/View;
    invoke-static { p2, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->applyFrom(Landroid/view/View;Landroid/view/ActionMode;)V
    const/4 p1, 1
    return p1
.end method
