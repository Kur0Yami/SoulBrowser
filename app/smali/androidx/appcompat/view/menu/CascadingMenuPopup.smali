.class final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field public static final E:I


# instance fields
.field public A:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public B:Landroid/view/ViewTreeObserver;

.field public C:Landroid/widget/PopupWindow$OnDismissListener;

.field public D:Z

.field public final f:Landroid/content/Context;

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final n:Landroid/view/View$OnAttachStateChangeListener;

.field public final o:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public p:I

.field public q:I

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    .line 2
    .line 3
    sput v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->E:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 24
    .line 25
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/View$OnAttachStateChangeListener;

    .line 31
    .line 32
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:I

    .line 41
    .line 42
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 47
    .line 48
    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:I

    .line 49
    .line 50
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Z

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/4 p3, 0x1

    .line 59
    if-ne p2, p3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v0, p3

    .line 63
    :goto_0
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    .line 75
    div-int/lit8 p2, p2, 0x2

    .line 76
    .line 77
    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g:I

    .line 88
    .line 89
    new-instance p1, Landroid/os/Handler;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Landroid/os/Handler;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    return v2
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/View$OnAttachStateChangeListener;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 16
    .line 17
    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v1, v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 54
    .line 55
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->r(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->D:Z

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->t()V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v3, 0x1

    .line 82
    if-lez v1, :cond_5

    .line 83
    .line 84
    add-int/lit8 v4, v1, -0x1

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 91
    .line 92
    iget v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->c:I

    .line 93
    .line 94
    iput v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    iget-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ne v4, v3, :cond_6

    .line 104
    .line 105
    move v4, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    move v4, v3

    .line 108
    :goto_2
    iput v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 109
    .line 110
    :goto_3
    if-nez v1, :cond_a

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 116
    .line 117
    if-eqz p2, :cond_7

    .line 118
    .line 119
    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroid/view/ViewTreeObserver;

    .line 123
    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroid/view/ViewTreeObserver;

    .line 133
    .line 134
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroid/view/ViewTreeObserver;

    .line 141
    .line 142
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/View$OnAttachStateChangeListener;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/widget/PopupWindow$OnDismissListener;

    .line 150
    .line 151
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_a
    if-eqz p2, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 162
    .line 163
    iget-object p1, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_4
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Landroid/widget/HeaderViewListAdapter;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    check-cast v2, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final i()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 21
    .line 22
    return-object v0
.end method

.method public final j(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :cond_0
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 19
    .line 20
    iget-object v6, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 21
    .line 22
    if-ne p1, v6, :cond_0

    .line 23
    .line 24
    iget-object p1, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v4

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->d(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v4

    .line 49
    :cond_3
    return v2
.end method

.method public final l(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->b(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 18
    .line 19
    iget-object v5, v5, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:I

    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:I

    .line 5
    .line 6
    return-void
.end method

.method public final u(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 12
    .line 13
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Z

    .line 14
    .line 15
    sget v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->E:I

    .line 16
    .line 17
    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iput-boolean v6, v4, Landroidx/appcompat/view/menu/MenuAdapter;->g:Z

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-object v5, v1, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move v8, v7

    .line 48
    :goto_0
    if-ge v8, v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    move v5, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v5, v7

    .line 72
    :goto_1
    iput-boolean v5, v4, Landroidx/appcompat/view/menu/MenuAdapter;->g:Z

    .line 73
    .line 74
    :cond_3
    :goto_2
    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g:I

    .line 75
    .line 76
    invoke-static {v4, v2, v5}, Landroidx/appcompat/view/menu/MenuPopup;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    new-instance v8, Landroidx/appcompat/widget/MenuPopupWindow;

    .line 81
    .line 82
    iget v9, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:I

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-direct {v8, v2, v10, v9, v7}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 89
    .line 90
    iput-object v2, v8, Landroidx/appcompat/widget/MenuPopupWindow;->H:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 91
    .line 92
    iput-object v0, v8, Landroidx/appcompat/widget/ListPopupWindow;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 93
    .line 94
    iget-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 100
    .line 101
    iput-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroid/view/View;

    .line 102
    .line 103
    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 104
    .line 105
    iput v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    .line 106
    .line 107
    iput-boolean v6, v8, Landroidx/appcompat/widget/ListPopupWindow;->C:Z

    .line 108
    .line 109
    iget-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 110
    .line 111
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    .line 115
    .line 116
    const/4 v9, 0x2

    .line 117
    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/ListPopupWindow;->p(Landroid/widget/ListAdapter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    .line 124
    .line 125
    .line 126
    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 127
    .line 128
    iput v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    .line 129
    .line 130
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-lez v4, :cond_c

    .line 137
    .line 138
    invoke-static {v6, v2}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 143
    .line 144
    iget-object v11, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 145
    .line 146
    iget-object v12, v11, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    move v13, v7

    .line 153
    :goto_3
    if-ge v13, v12, :cond_5

    .line 154
    .line 155
    invoke-virtual {v11, v13}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_4

    .line 164
    .line 165
    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    if-ne v1, v15, :cond_4

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move-object v14, v10

    .line 176
    :goto_4
    if-nez v14, :cond_6

    .line 177
    .line 178
    move/from16 v17, v6

    .line 179
    .line 180
    move/from16 v16, v7

    .line 181
    .line 182
    move-object v6, v10

    .line 183
    goto :goto_9

    .line 184
    :cond_6
    iget-object v11, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 185
    .line 186
    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 187
    .line 188
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 193
    .line 194
    if-eqz v13, :cond_7

    .line 195
    .line 196
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 197
    .line 198
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 210
    .line 211
    move v13, v7

    .line 212
    :goto_5
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    move v10, v7

    .line 217
    move/from16 v16, v10

    .line 218
    .line 219
    :goto_6
    const/4 v7, -0x1

    .line 220
    move/from16 v17, v6

    .line 221
    .line 222
    if-ge v10, v15, :cond_9

    .line 223
    .line 224
    invoke-virtual {v12, v10}, Landroidx/appcompat/view/menu/MenuAdapter;->c(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    if-ne v14, v6, :cond_8

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 232
    .line 233
    move/from16 v6, v17

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_9
    move v10, v7

    .line 237
    :goto_7
    if-ne v10, v7, :cond_a

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_a
    add-int/2addr v10, v13

    .line 241
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    sub-int/2addr v10, v6

    .line 246
    if-ltz v10, :cond_d

    .line 247
    .line 248
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-lt v10, v6, :cond_b

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_b
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    goto :goto_9

    .line 260
    :cond_c
    move/from16 v17, v6

    .line 261
    .line 262
    move/from16 v16, v7

    .line 263
    .line 264
    const/4 v4, 0x0

    .line 265
    :cond_d
    :goto_8
    const/4 v6, 0x0

    .line 266
    :goto_9
    if-eqz v6, :cond_17

    .line 267
    .line 268
    invoke-virtual {v8}, Landroidx/appcompat/widget/MenuPopupWindow;->u()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Landroidx/appcompat/widget/MenuPopupWindow;->s()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    add-int/lit8 v7, v7, -0x1

    .line 279
    .line 280
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 285
    .line 286
    iget-object v7, v7, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 287
    .line 288
    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 289
    .line 290
    new-array v10, v9, [I

    .line 291
    .line 292
    invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 293
    .line 294
    .line 295
    new-instance v11, Landroid/graphics/Rect;

    .line 296
    .line 297
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v12, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 303
    .line 304
    .line 305
    iget v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 306
    .line 307
    move/from16 v13, v17

    .line 308
    .line 309
    if-ne v12, v13, :cond_10

    .line 310
    .line 311
    aget v10, v10, v16

    .line 312
    .line 313
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    add-int/2addr v7, v10

    .line 318
    add-int/2addr v7, v5

    .line 319
    iget v10, v11, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    if-le v7, v10, :cond_f

    .line 322
    .line 323
    :cond_e
    move/from16 v7, v16

    .line 324
    .line 325
    :goto_a
    const/4 v13, 0x1

    .line 326
    goto :goto_c

    .line 327
    :cond_f
    :goto_b
    const/4 v7, 0x1

    .line 328
    goto :goto_a

    .line 329
    :cond_10
    aget v7, v10, v16

    .line 330
    .line 331
    sub-int/2addr v7, v5

    .line 332
    if-gez v7, :cond_e

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :goto_c
    if-ne v7, v13, :cond_11

    .line 336
    .line 337
    const/4 v13, 0x1

    .line 338
    goto :goto_d

    .line 339
    :cond_11
    move/from16 v13, v16

    .line 340
    .line 341
    :goto_d
    iput v7, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 342
    .line 343
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 344
    .line 345
    const/16 v10, 0x1a

    .line 346
    .line 347
    const/4 v11, 0x5

    .line 348
    if-lt v7, v10, :cond_12

    .line 349
    .line 350
    iput-object v6, v8, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroid/view/View;

    .line 351
    .line 352
    move/from16 v9, v16

    .line 353
    .line 354
    move v10, v9

    .line 355
    goto :goto_e

    .line 356
    :cond_12
    new-array v7, v9, [I

    .line 357
    .line 358
    iget-object v10, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 359
    .line 360
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 361
    .line 362
    .line 363
    new-array v9, v9, [I

    .line 364
    .line 365
    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 366
    .line 367
    .line 368
    iget v10, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 369
    .line 370
    and-int/lit8 v10, v10, 0x7

    .line 371
    .line 372
    if-ne v10, v11, :cond_13

    .line 373
    .line 374
    aget v10, v7, v16

    .line 375
    .line 376
    iget-object v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Landroid/view/View;

    .line 377
    .line 378
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 379
    .line 380
    .line 381
    move-result v12

    .line 382
    add-int/2addr v12, v10

    .line 383
    aput v12, v7, v16

    .line 384
    .line 385
    aget v10, v9, v16

    .line 386
    .line 387
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    add-int/2addr v12, v10

    .line 392
    aput v12, v9, v16

    .line 393
    .line 394
    :cond_13
    aget v10, v9, v16

    .line 395
    .line 396
    aget v12, v7, v16

    .line 397
    .line 398
    sub-int/2addr v10, v12

    .line 399
    const/16 v17, 0x1

    .line 400
    .line 401
    aget v9, v9, v17

    .line 402
    .line 403
    aget v7, v7, v17

    .line 404
    .line 405
    sub-int/2addr v9, v7

    .line 406
    :goto_e
    iget v7, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 407
    .line 408
    and-int/2addr v7, v11

    .line 409
    if-ne v7, v11, :cond_16

    .line 410
    .line 411
    if-eqz v13, :cond_14

    .line 412
    .line 413
    add-int/2addr v10, v5

    .line 414
    goto :goto_f

    .line 415
    :cond_14
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    :cond_15
    sub-int/2addr v10, v5

    .line 420
    goto :goto_f

    .line 421
    :cond_16
    if-eqz v13, :cond_15

    .line 422
    .line 423
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    add-int/2addr v10, v5

    .line 428
    :goto_f
    iput v10, v8, Landroidx/appcompat/widget/ListPopupWindow;->j:I

    .line 429
    .line 430
    const/4 v13, 0x1

    .line 431
    iput-boolean v13, v8, Landroidx/appcompat/widget/ListPopupWindow;->o:Z

    .line 432
    .line 433
    iput-boolean v13, v8, Landroidx/appcompat/widget/ListPopupWindow;->n:Z

    .line 434
    .line 435
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ListPopupWindow;->l(I)V

    .line 436
    .line 437
    .line 438
    goto :goto_11

    .line 439
    :cond_17
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:Z

    .line 440
    .line 441
    if-eqz v5, :cond_18

    .line 442
    .line 443
    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:I

    .line 444
    .line 445
    iput v5, v8, Landroidx/appcompat/widget/ListPopupWindow;->j:I

    .line 446
    .line 447
    :cond_18
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    .line 448
    .line 449
    if-eqz v5, :cond_19

    .line 450
    .line 451
    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:I

    .line 452
    .line 453
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/ListPopupWindow;->l(I)V

    .line 454
    .line 455
    .line 456
    :cond_19
    iget-object v5, v0, Landroidx/appcompat/view/menu/MenuPopup;->c:Landroid/graphics/Rect;

    .line 457
    .line 458
    if-eqz v5, :cond_1a

    .line 459
    .line 460
    new-instance v6, Landroid/graphics/Rect;

    .line 461
    .line 462
    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 463
    .line 464
    .line 465
    goto :goto_10

    .line 466
    :cond_1a
    const/4 v6, 0x0

    .line 467
    :goto_10
    iput-object v6, v8, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/graphics/Rect;

    .line 468
    .line 469
    :goto_11
    new-instance v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 470
    .line 471
    iget v6, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    .line 472
    .line 473
    invoke-direct {v5, v8, v1, v6}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->b()V

    .line 480
    .line 481
    .line 482
    iget-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->g:Landroidx/appcompat/widget/DropDownListView;

    .line 483
    .line 484
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 485
    .line 486
    .line 487
    if-nez v4, :cond_1b

    .line 488
    .line 489
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Z

    .line 490
    .line 491
    if-eqz v4, :cond_1b

    .line 492
    .line 493
    iget-object v4, v1, Landroidx/appcompat/view/menu/MenuBuilder;->m:Ljava/lang/CharSequence;

    .line 494
    .line 495
    if-eqz v4, :cond_1b

    .line 496
    .line 497
    sget v4, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    .line 498
    .line 499
    move/from16 v5, v16

    .line 500
    .line 501
    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Landroid/widget/FrameLayout;

    .line 506
    .line 507
    const v4, 0x1020016

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    .line 518
    .line 519
    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->m:Ljava/lang/CharSequence;

    .line 520
    .line 521
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    const/4 v1, 0x0

    .line 525
    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->b()V

    .line 529
    .line 530
    .line 531
    :cond_1b
    return-void
.end method
