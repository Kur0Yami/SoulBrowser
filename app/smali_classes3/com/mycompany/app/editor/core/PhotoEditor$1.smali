.class Lcom/mycompany/app/editor/core/PhotoEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/editor/core/PhotoEditor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$1;->a:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$1;->a:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget p1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput v0, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v1, p1}, Lcom/mycompany/app/editor/core/PhotoEditor;->b(Landroid/widget/FrameLayout;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget p1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    iput p1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 25
    .line 26
    iget-object p1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object p1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v0, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->e:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/editor/core/PhotoEditor;->f()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$1;->a:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_8

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    instance-of v5, v4, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-nez v5, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    check-cast v4, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    instance-of v5, v4, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 40
    .line 41
    if-nez v5, :cond_4

    .line 42
    .line 43
    :goto_1
    const/4 v4, 0x0

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    check-cast v4, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 46
    .line 47
    :goto_2
    if-nez v4, :cond_5

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_5
    iget-object v4, v4, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 51
    .line 52
    if-nez v4, :cond_6

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_7

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    return v0

    .line 63
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_8
    :goto_4
    return v2
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$1;->a:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
