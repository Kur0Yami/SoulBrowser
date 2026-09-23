.class Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1$1;->c:Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1$1;->c:Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->c:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;->a(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
