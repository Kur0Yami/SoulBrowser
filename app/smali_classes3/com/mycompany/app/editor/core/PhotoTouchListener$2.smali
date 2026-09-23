.class Lcom/mycompany/app/editor/core/PhotoTouchListener$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/core/PhotoTouchListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$2;->c:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$2;->c:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->l:Z

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->n:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 21
    .line 22
    check-cast v0, Lcom/mycompany/app/editor/core/PhotoEditor$3;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor$3;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor$3;->a:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->b:Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v1, v1, Lcom/mycompany/app/editor/core/PhotoEditor;->b:Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->a:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-interface {v1, p1, v0, v2}, Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;->b(Landroid/widget/FrameLayout;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$2;->c:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener;->j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->b:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->b:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->text_border:I

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return v1
.end method
