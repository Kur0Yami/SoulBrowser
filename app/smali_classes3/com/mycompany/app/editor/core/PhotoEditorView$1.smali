.class Lcom/mycompany/app/editor/core/PhotoEditorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

.field public final synthetic f:Lcom/mycompany/app/editor/core/PhotoEditorView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditorView;Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->c:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView;->i:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->c:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 14
    .line 15
    check-cast v1, Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/mycompany/app/editor/core/PhotoEditor$5;->a(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;-><init>(Lcom/mycompany/app/editor/core/PhotoEditorView$1;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/editor/core/PhotoEffectView;->n:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    iput-object v0, v1, Lcom/mycompany/app/editor/core/PhotoEffectView;->n:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
