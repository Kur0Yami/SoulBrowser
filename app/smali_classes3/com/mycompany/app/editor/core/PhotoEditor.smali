.class public Lcom/mycompany/app/editor/core/PhotoEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;

.field public c:Lcom/mycompany/app/editor/core/PhotoEditorView;

.field public d:Landroid/widget/ImageView;

.field public e:Lcom/mycompany/app/editor/core/PhotoDrawView;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/editor/core/PhotoEditorView;Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->b:Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mycompany/app/editor/core/PhotoEditorView;->getImageView()Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/mycompany/app/editor/core/PhotoEditorView;->getDrawView()Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->e:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 41
    .line 42
    new-instance p2, Lcom/mycompany/app/editor/core/PhotoEditor$1;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lcom/mycompany/app/editor/core/PhotoEditor$1;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/mycompany/app/editor/core/PhotoDrawView;->setListener(Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoEditor$2;

    .line 7
    .line 8
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mycompany/app/editor/core/PhotoEditor$2;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor;Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_9

    .line 13
    .line 14
    iget-object v3, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    instance-of v4, v3, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_2
    check-cast v3, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    instance-of v4, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 47
    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    :goto_1
    const/4 v3, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    check-cast v3, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 53
    .line 54
    :goto_2
    if-nez v3, :cond_6

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    iget-object v4, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->b:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    if-eqz v4, :cond_7

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    :cond_7
    iget-object v3, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 65
    .line 66
    if-eqz v3, :cond_8

    .line 67
    .line 68
    const/16 v4, 0x8

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_9
    :goto_4
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->e:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 41
    .line 42
    iget-object v4, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, -0x1

    .line 64
    if-ne v2, v3, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/mycompany/app/editor/core/PhotoEditor;->f()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v4, Landroid/view/View;

    .line 21
    .line 22
    instance-of v5, v4, Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v5, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->e:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/mycompany/app/editor/core/PhotoEditor;->f()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/mycompany/app/editor/core/PhotoEditorView;->setEffectType(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final e(Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/editor/core/PhotoEditor$5;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor;Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lcom/mycompany/app/editor/core/PhotoEditorView;->h:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/mycompany/app/editor/core/PhotoEditorView;->h:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/mycompany/app/editor/core/PhotoEditorView;->b(Z)Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-virtual {v0, p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/mycompany/app/editor/core/PhotoEditorView$1;-><init>(Lcom/mycompany/app/editor/core/PhotoEditorView;Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->b:Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v2

    .line 19
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-lez v4, :cond_2

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_2
    invoke-interface {v1, v0, v2}, Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;->a(ZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->e:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 41
    .line 42
    iget-object v4, v2, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, -0x1

    .line 64
    if-ne v2, v3, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/mycompany/app/editor/core/PhotoEditor;->f()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
