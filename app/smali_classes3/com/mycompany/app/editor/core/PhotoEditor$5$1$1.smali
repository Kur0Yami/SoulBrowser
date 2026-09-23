.class Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:Lcom/mycompany/app/editor/core/PhotoEditor$5$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditor$5$1;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;->f:Lcom/mycompany/app/editor/core/PhotoEditor$5$1;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;->c:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;->f:Lcom/mycompany/app/editor/core/PhotoEditor$5$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1;->c:Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor$5;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 8
    .line 9
    iget-object v1, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    iget-wide v5, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;->c:J

    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->j:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v4, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->j:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    .line 39
    .line 40
    iput-object v8, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->j:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_1
    iget v3, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->i:I

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    iget-object v2, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 47
    .line 48
    const/16 v3, 0x8

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    move-object v8, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v2, v2, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor$5;->a:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 69
    .line 70
    invoke-interface {v0, v8}, Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;->a(Landroid/graphics/Bitmap;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor$5;->a:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;->w()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
