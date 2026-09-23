.class public Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;
    }
.end annotation


# static fields
.field public static final t:Landroid/util/SparseArray;

.field public static final u:[I

.field public static final v:[I


# instance fields
.field public final c:Landroidx/mediarouter/media/MediaRouter;

.field public final f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

.field public g:Landroidx/mediarouter/media/MediaRouteSelector;

.field public h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public i:Z

.field public j:Z

.field public k:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:I

.field public o:I

.field public final p:Landroid/content/res/ColorStateList;

.field public final q:I

.field public final r:I

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroid/util/SparseArray;

    .line 8
    .line 9
    const v0, 0x10100a0

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->u:[I

    .line 17
    .line 18
    const v0, 0x101009f

    .line 19
    .line 20
    .line 21
    filled-new-array {v0}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->v:[I

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v5, Landroidx/mediarouter/R$attr;->mediaRouteButtonStyle:I

    .line 2
    .line 3
    sget v0, Landroidx/mediarouter/app/MediaRouterThemeHelper;->a:I

    .line 4
    .line 5
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->e(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    sget p1, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->g(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 23
    .line 24
    invoke-direct {v1, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :cond_0
    invoke-direct {p0, v0, p2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 34
    .line 35
    sget-object p1, Landroidx/mediarouter/app/MediaRouteDialogFactory;->a:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v1, p2, p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget-object v2, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    move-object v3, p2

    .line 54
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 65
    .line 66
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 67
    .line 68
    sget p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    .line 69
    .line 70
    invoke-virtual {v4, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 86
    .line 87
    new-instance p1, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 93
    .line 94
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_2

    .line 103
    .line 104
    iget p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    move p1, v6

    .line 108
    :goto_0
    iput p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 109
    .line 110
    iput p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->n:I

    .line 111
    .line 112
    sget p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    .line 113
    .line 114
    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->p:Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    sget p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    .line 121
    .line 122
    invoke-virtual {v4, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->q:I

    .line 127
    .line 128
    sget p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    .line 129
    .line 130
    invoke-virtual {v4, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, v0, Landroidx/mediarouter/app/MediaRouteButton;->r:I

    .line 135
    .line 136
    sget p1, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    .line 137
    .line 138
    invoke-virtual {v4, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    sget p2, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    .line 143
    .line 144
    invoke-virtual {v4, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iput p2, v0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    .line 152
    .line 153
    iget p2, v0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 154
    .line 155
    sget-object v1, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroid/util/SparseArray;

    .line 156
    .line 157
    if-eqz p2, :cond_3

    .line 158
    .line 159
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 164
    .line 165
    if-eqz p2, :cond_3

    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    iget-object p2, v0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    if-nez p2, :cond_6

    .line 177
    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 185
    .line 186
    if-eqz p2, :cond_4

    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {p2, p1, v1, p0}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 203
    .line 204
    .line 205
    iput-object p2, v0, Landroidx/mediarouter/app/MediaRouteButton;->k:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 206
    .line 207
    sget-object p1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 208
    .line 209
    new-array v1, v6, [Ljava/lang/Void;

    .line 210
    .line 211
    invoke-virtual {p2, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 216
    .line 217
    .line 218
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->e()V

    .line 219
    .line 220
    .line 221
    const/4 p1, 0x1

    .line 222
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method private getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 14
    .line 15
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v0, v2, v3, p0}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 25
    .line 26
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 27
    .line 28
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-array v1, v1, [Ljava/lang/Void;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 21
    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->e()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final c()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->j()Landroidx/mediarouter/media/MediaRouterParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_f

    .line 17
    .line 18
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouterParams;->b:Z

    .line 19
    .line 20
    if-eqz v0, :cond_e

    .line 21
    .line 22
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->n()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_e

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/16 v4, 0x1e

    .line 36
    .line 37
    const/16 v5, 0x22

    .line 38
    .line 39
    if-lt v2, v5, :cond_1

    .line 40
    .line 41
    if-lt v2, v4, :cond_6

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api30Impl;->a(Landroid/content/Context;)Landroid/media/MediaRouter2;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-lt v2, v5, :cond_6

    .line 48
    .line 49
    invoke-static {v6}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api34Impl;->a(Landroid/media/MediaRouter2;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/16 v5, 0x1f

    .line 55
    .line 56
    if-lt v2, v5, :cond_5

    .line 57
    .line 58
    new-instance v2, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 64
    .line 65
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v5, "com.android.systemui"

    .line 70
    .line 71
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v5, "package_name"

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 108
    .line 109
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 110
    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    .line 115
    if-nez v6, :cond_3

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 119
    .line 120
    and-int/lit16 v6, v6, 0x81

    .line 121
    .line 122
    if-eqz v6, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-static {v0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->a(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    :goto_1
    move v2, v3

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    if-ne v2, v4, :cond_6

    .line 137
    .line 138
    invoke-static {v0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->a(Landroid/content/Context;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move v2, v1

    .line 144
    :goto_2
    if-eqz v2, :cond_7

    .line 145
    .line 146
    :goto_3
    move v1, v3

    .line 147
    goto/16 :goto_8

    .line 148
    .line 149
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v5, "android.hardware.type.watch"

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_d

    .line 160
    .line 161
    new-instance v2, Landroid/content/Intent;

    .line 162
    .line 163
    const-string v5, "android.settings.BLUETOOTH_SETTINGS"

    .line 164
    .line 165
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const v5, 0x10008000

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const-string v5, "EXTRA_CONNECTION_ONLY"

    .line 176
    .line 177
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v5, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 182
    .line 183
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const-class v5, Landroid/media/AudioManager;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Landroid/media/AudioManager;

    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    array-length v6, v5

    .line 201
    move v7, v1

    .line 202
    :goto_4
    if-ge v7, v6, :cond_9

    .line 203
    .line 204
    aget-object v8, v5, v7

    .line 205
    .line 206
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    const/4 v9, 0x3

    .line 211
    if-eq v8, v9, :cond_8

    .line 212
    .line 213
    const/4 v9, 0x4

    .line 214
    if-eq v8, v9, :cond_8

    .line 215
    .line 216
    const/4 v9, 0x5

    .line 217
    if-eq v8, v9, :cond_8

    .line 218
    .line 219
    const/4 v9, 0x6

    .line 220
    if-eq v8, v9, :cond_8

    .line 221
    .line 222
    const/16 v9, 0x8

    .line 223
    .line 224
    if-eq v8, v9, :cond_8

    .line 225
    .line 226
    const/16 v9, 0xb

    .line 227
    .line 228
    if-eq v8, v9, :cond_8

    .line 229
    .line 230
    if-eq v8, v4, :cond_8

    .line 231
    .line 232
    const/16 v9, 0x16

    .line 233
    .line 234
    if-eq v8, v9, :cond_8

    .line 235
    .line 236
    const/16 v9, 0x17

    .line 237
    .line 238
    if-eq v8, v9, :cond_8

    .line 239
    .line 240
    const/16 v9, 0x1a

    .line 241
    .line 242
    if-eq v8, v9, :cond_8

    .line 243
    .line 244
    const/16 v9, 0x1b

    .line 245
    .line 246
    if-eq v8, v9, :cond_8

    .line 247
    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_8
    move v4, v3

    .line 252
    goto :goto_5

    .line 253
    :cond_9
    move v4, v1

    .line 254
    :goto_5
    xor-int/2addr v4, v3

    .line 255
    const-string v5, "EXTRA_CLOSE_ON_CONNECT"

    .line 256
    .line 257
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_c

    .line 278
    .line 279
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 284
    .line 285
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 286
    .line 287
    if-eqz v5, :cond_a

    .line 288
    .line 289
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 290
    .line 291
    if-nez v5, :cond_b

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_b
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 295
    .line 296
    and-int/lit16 v6, v6, 0x81

    .line 297
    .line 298
    if-eqz v6, :cond_a

    .line 299
    .line 300
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    .line 307
    .line 308
    move v0, v3

    .line 309
    goto :goto_7

    .line 310
    :cond_c
    move v0, v1

    .line 311
    :goto_7
    if-eqz v0, :cond_d

    .line 312
    .line 313
    goto/16 :goto_3

    .line 314
    .line 315
    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 316
    .line 317
    return v3

    .line 318
    :cond_e
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    return v0

    .line 323
    :cond_f
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    return v0
.end method

.method public final d()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "selector must not be null"

    .line 21
    .line 22
    const-string v3, "selector"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-string v5, "MediaRouteButton"

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    const-string v1, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    const-string v0, "showDialog(): Route chooser dialog already showing!"

    .line 39
    .line 40
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v4

    .line 44
    :cond_0
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;

    .line 50
    .line 51
    invoke-direct {v5}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 55
    .line 56
    if-eqz v7, :cond_4

    .line 57
    .line 58
    invoke-virtual {v5}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 62
    .line 63
    invoke-virtual {v2, v7}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    iput-object v7, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    new-instance v2, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouteSelector;->a:Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-boolean v3, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->c:Z

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    check-cast v2, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    .line 99
    .line 100
    invoke-virtual {v2, v7}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->f(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    check-cast v2, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 105
    .line 106
    invoke-virtual {v2, v7}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->g(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v4, v5, v1, v6}, Landroidx/fragment/app/FragmentTransaction;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->d()I

    .line 117
    .line 118
    .line 119
    return v6

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_5
    const-string v1, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    if-eqz v7, :cond_6

    .line 133
    .line 134
    const-string v0, "showDialog(): Route controller dialog already showing!"

    .line 135
    .line 136
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return v4

    .line 140
    :cond_6
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-instance v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;

    .line 146
    .line 147
    invoke-direct {v5}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 151
    .line 152
    if-eqz v7, :cond_b

    .line 153
    .line 154
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 155
    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iput-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 173
    .line 174
    :cond_7
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 175
    .line 176
    if-nez v2, :cond_8

    .line 177
    .line 178
    sget-object v2, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 179
    .line 180
    iput-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 181
    .line 182
    :cond_8
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 183
    .line 184
    invoke-virtual {v2, v7}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_a

    .line 189
    .line 190
    iput-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 191
    .line 192
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-nez v2, :cond_9

    .line 197
    .line 198
    new-instance v2, Landroid/os/Bundle;

    .line 199
    .line 200
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    .line 202
    .line 203
    :cond_9
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouteSelector;->a:Landroid/os/Bundle;

    .line 204
    .line 205
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 212
    .line 213
    if-eqz v2, :cond_a

    .line 214
    .line 215
    iget-boolean v3, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->c:Z

    .line 216
    .line 217
    if-eqz v3, :cond_a

    .line 218
    .line 219
    check-cast v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 220
    .line 221
    invoke-virtual {v2, v7}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->h(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0, v4, v5, v1, v6}, Landroidx/fragment/app/FragmentTransaction;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->d()I

    .line 232
    .line 233
    .line 234
    return v6

    .line 235
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string v1, "The activity must be a subclass of FragmentActivity"

    .line 244
    .line 245
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 34
    .line 35
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->n:I

    .line 41
    .line 42
    if-eq v3, v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x2

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 76
    .line 77
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->n:I

    .line 78
    .line 79
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_disconnected:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_connected:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_connecting:I

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-static {p0, v0}, Landroidx/appcompat/widget/TooltipCompat;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public getDialogFactory()Landroidx/mediarouter/app/MediaRouteDialogFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->i:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 28
    .line 29
    invoke-virtual {v3, v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    .line 18
    .line 19
    if-eq v1, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq v1, v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-object p1

    .line 25
    :cond_2
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->u:[I

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_3
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->v:[I

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->i:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sub-int/2addr v3, v4

    .line 34
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    sub-int/2addr v1, v0

    .line 47
    sub-int/2addr v1, v4

    .line 48
    div-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    add-int/2addr v1, v0

    .line 51
    sub-int/2addr v3, v2

    .line 52
    sub-int/2addr v3, v5

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    add-int/2addr v4, v1

    .line 59
    add-int/2addr v5, v3

    .line 60
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v3

    .line 38
    :goto_0
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->q:I

    .line 39
    .line 40
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-int/2addr v4, v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, v4

    .line 62
    :cond_1
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:I

    .line 63
    .line 64
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    .line 70
    const/high16 v5, -0x80000000

    .line 71
    .line 72
    if-eq p1, v5, :cond_2

    .line 73
    .line 74
    if-eq p1, v4, :cond_3

    .line 75
    .line 76
    move v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    .line 83
    .line 84
    if-eq p2, v4, :cond_5

    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public setAlwaysVisible(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCheatSheetEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDialogFactory(Landroidx/mediarouter/app/MediaRouteDialogFactory;)V
    .locals 1
    .param p1    # Landroidx/mediarouter/app/MediaRouteDialogFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "factory must not be null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eqz p1, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->p:Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 55
    .line 56
    .line 57
    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3
    .param p1    # Landroidx/mediarouter/media/MediaRouteSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->i:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {v2, p1, v1, v0}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v0, "selector must not be null"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method
