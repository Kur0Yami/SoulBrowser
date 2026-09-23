.class public Lcom/mycompany/app/main/image/MainImageQuick;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# static fields
.field public static final synthetic f2:I


# instance fields
.field public A1:I

.field public B1:I

.field public C1:I

.field public D1:I

.field public E1:Lcom/mycompany/app/view/MyFadeFrame;

.field public F1:Z

.field public G1:Z

.field public H1:Z

.field public I1:Z

.field public J1:Z

.field public K1:Z

.field public L1:Z

.field public M1:Z

.field public N1:Lcom/mycompany/app/view/MyPopupMenu;

.field public O1:Landroid/net/Uri;

.field public P1:Lcom/mycompany/app/dialog/DialogEditText;

.field public Q1:Lcom/mycompany/app/view/MyDialogBottom;

.field public R1:Lcom/mycompany/app/view/MyDialogLinear;

.field public S1:Lcom/mycompany/app/view/MyRecyclerView;

.field public T1:Lcom/mycompany/app/setting/SettingListAdapter;

.field public U1:Z

.field public V1:Z

.field public W1:Landroid/view/OrientationEventListener;

.field public X1:Z

.field public Y1:Landroid/graphics/Bitmap;

.field public Z1:Landroid/graphics/Bitmap;

.field public a2:Landroid/graphics/Bitmap;

.field public b2:Landroid/graphics/Bitmap;

.field public c2:Landroid/graphics/Bitmap;

.field public d2:Landroid/graphics/Bitmap;

.field public e2:Z

.field public f1:Landroid/content/Context;

.field public g1:Ljava/lang/String;

.field public h1:Ljava/lang/String;

.field public i1:Ljava/lang/String;

.field public j1:Z

.field public k1:Lcom/mycompany/app/view/MySizeFrame;

.field public l1:Lcom/mycompany/app/main/image/MainImageView;

.field public m1:Lcom/mycompany/app/main/image/MainImageView;

.field public n1:Lcom/mycompany/app/view/MyFadeFrame;

.field public o1:Lcom/mycompany/app/view/MyAreaView;

.field public p1:Landroid/widget/LinearLayout;

.field public q1:Landroidx/appcompat/widget/AppCompatTextView;

.field public r1:Lcom/mycompany/app/view/MyLineText;

.field public s1:Lcom/mycompany/app/view/MyCoverView;

.field public t1:Lcom/mycompany/app/view/MyButtonRelative;

.field public u1:Landroid/widget/FrameLayout;

.field public v1:Lcom/mycompany/app/main/image/MainImageView;

.field public w1:Lcom/mycompany/app/view/MyButtonRelative;

.field public x1:Landroid/widget/FrameLayout;

.field public y1:Lcom/mycompany/app/main/image/MainImageView;

.field public z1:Lcom/mycompany/app/main/image/MainImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u0(Lcom/mycompany/app/main/image/MainImageQuick;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->x1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->u1:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->G0(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-boolean v0, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    sget p1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_5
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->K1:Z

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->k()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->I0()V

    .line 57
    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    const/4 p1, 0x6

    .line 64
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-ne p1, v0, :cond_7

    .line 69
    .line 70
    :goto_1
    return-void

    .line 71
    :catch_0
    :cond_7
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static v0(Lcom/mycompany/app/main/image/MainImageQuick;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->y0(Z)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 19
    .line 20
    invoke-static {v0, v2, p1}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 34
    .line 35
    :goto_0
    invoke-static {v0, p0, p1, v2}, Lcom/mycompany/app/main/MainUtil;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/BitmapUtil;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-static {v1, p1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p1, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :catch_0
    :goto_2
    return v1
.end method


# virtual methods
.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->P1:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditText;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->P1:Lcom/mycompany/app/dialog/DialogEditText;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final B0(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0, p3}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :goto_1
    return-void

    .line 33
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    if-eqz p2, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->r()V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/mycompany/app/main/image/MainImageQuick;->F0(Landroid/graphics/Bitmap;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final C0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->z1:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->z1:Lcom/mycompany/app/main/image/MainImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->A1:I

    .line 16
    .line 17
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->B1:I

    .line 20
    .line 21
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->C1:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->D1:I

    .line 29
    .line 30
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final D0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const v1, -0x7f7f80

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final E0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 8
    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x4

    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->K1:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageView;->k()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->n1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImageQuick;->o1:Lcom/mycompany/app/view/MyAreaView;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v4}, Lcom/mycompany/app/main/image/MainImageView;->o(Lcom/mycompany/app/view/MyFadeFrame;Lcom/mycompany/app/view/MyAreaView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonRelative;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonRelative;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget v0, Lnet/kaki87/soul2/testing/R$string;->crop_save:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->D0(Z)V

    .line 92
    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->L1:Z

    .line 95
    .line 96
    if-eqz p1, :cond_b

    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->L1:Z

    .line 99
    .line 100
    sget-boolean p1, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 101
    .line 102
    if-eqz p1, :cond_b

    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 105
    .line 106
    if-nez p1, :cond_b

    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 109
    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 115
    .line 116
    if-nez p1, :cond_6

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_6
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$20;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageQuick$20;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 130
    .line 131
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/main/image/MainImageQuick;->F0(Landroid/graphics/Bitmap;Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->F0(Landroid/graphics/Bitmap;Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    sget v4, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 157
    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :goto_1
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/main/image/MainImageView;->o(Lcom/mycompany/app/view/MyFadeFrame;Lcom/mycompany/app/view/MyAreaView;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p1, Lcom/mycompany/app/main/image/MainImageView;->P:F

    .line 192
    .line 193
    iput-boolean v2, p1, Lcom/mycompany/app/main/image/MainImageView;->Q:Z

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    new-array v3, v3, [F

    .line 197
    .line 198
    aput v0, v3, v2

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    aput v2, v3, v1

    .line 202
    .line 203
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, p1, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    const/high16 v2, 0x43c80000    # 400.0f

    .line 210
    .line 211
    mul-float/2addr v0, v2

    .line 212
    float-to-long v2, v0

    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 214
    .line 215
    .line 216
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    new-instance v1, Lcom/mycompany/app/main/image/MainImageView$12;

    .line 219
    .line 220
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageView$12;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 227
    .line 228
    new-instance v1, Lcom/mycompany/app/main/image/MainImageView$13;

    .line 229
    .line 230
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageView$13;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 239
    .line 240
    .line 241
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 242
    .line 243
    if-nez p1, :cond_c

    .line 244
    .line 245
    :cond_b
    :goto_3
    return-void

    .line 246
    :cond_c
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$18;

    .line 247
    .line 248
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageQuick$18;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final F0(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->x1:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->u1:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->D0(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void

    .line 42
    :cond_3
    iget-boolean p1, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x4

    .line 57
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final G0(Landroid/view/View;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    :cond_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    iput-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->K1:Z

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->O1:Landroid/net/Uri;

    .line 27
    .line 28
    new-instance v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 34
    .line 35
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 36
    .line 37
    invoke-direct {v0, p2, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 47
    .line 48
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    sget v1, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 58
    .line 59
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 68
    .line 69
    new-instance v8, Lcom/mycompany/app/main/image/MainImageQuick$23;

    .line 70
    .line 71
    invoke-direct {v8, p0}, Lcom/mycompany/app/main/image/MainImageQuick$23;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    move-object v3, p0

    .line 76
    move-object v5, p1

    .line 77
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, v3, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 81
    .line 82
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 83
    .line 84
    return-void
.end method

.method public final H0(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->z1:Lcom/mycompany/app/main/image/MainImageView;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->F1:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->F1:Z

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->F1:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/mycompany/app/main/image/MainImageQuick;->F1:Z

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 52
    .line 53
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object v6, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 57
    .line 58
    sub-int/2addr v4, v2

    .line 59
    invoke-virtual {v6, v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    if-eqz p1, :cond_4

    .line 63
    .line 64
    new-instance p1, Landroid/transition/ChangeBounds;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$16;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$16;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/transition/Scene;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 80
    .line 81
    invoke-direct {v1, v2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, p1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .line 93
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    .line 95
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->A1:I

    .line 96
    .line 97
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 98
    .line 99
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->B1:I

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->C1:I

    .line 106
    .line 107
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    .line 109
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->D1:I

    .line 110
    .line 111
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 118
    .line 119
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 128
    .line 129
    .line 130
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final I0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->z1:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->G1:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->crop_save:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/mycompany/app/main/image/MainImageQuick;->D0(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mycompany/app/main/image/MainImageQuick;->H0(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->O1:Landroid/net/Uri;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->O1:Landroid/net/Uri;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq p2, v1, :cond_2

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_2
    if-nez p3, :cond_3

    .line 21
    .line 22
    move-object p2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    if-nez p2, :cond_4

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_4
    move-object p1, p2

    .line 32
    :goto_1
    if-nez p1, :cond_5

    .line 33
    .line 34
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 43
    .line 44
    .line 45
    if-nez p3, :cond_6

    .line 46
    .line 47
    move-object p2, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_2
    iget-boolean p3, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 54
    .line 55
    invoke-virtual {p0, p3}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-nez p3, :cond_7

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_7
    invoke-virtual {p3, p1, v0, v0, p2}, Lcom/mycompany/app/main/image/MainImageView;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->K1:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 76
    .line 77
    .line 78
    iget-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 79
    .line 80
    if-eqz p2, :cond_8

    .line 81
    .line 82
    const/4 p1, 0x6

    .line 83
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 84
    .line 85
    .line 86
    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-ne p1, p2, :cond_9

    .line 88
    .line 89
    :goto_3
    return-void

    .line 90
    :catch_0
    :cond_9
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->C0()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "EXTRA_PATH"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->g1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "EXTRA_REFERER"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->h1:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v3, "EXTRA_TYPE"

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->i1:Ljava/lang/String;

    .line 54
    .line 55
    iput-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->j1:Z

    .line 56
    .line 57
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$32;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 65
    .line 66
    .line 67
    const/16 v1, 0xe

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/view/MySizeFrame;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    const/4 v5, -0x1

    .line 81
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Lcom/mycompany/app/main/image/MainImageView;

    .line 88
    .line 89
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/image/MainImageView;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    .line 96
    .line 97
    const/16 v7, 0x8

    .line 98
    .line 99
    invoke-virtual {v4, v7}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    .line 106
    .line 107
    const/16 v9, 0x11

    .line 108
    .line 109
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    new-instance v8, Lcom/mycompany/app/main/image/MainImageView;

    .line 115
    .line 116
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/image/MainImageView;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    .line 129
    invoke-virtual {v1, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    new-instance v6, Lcom/mycompany/app/view/MyFadeFrame;

    .line 133
    .line 134
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    invoke-direct {v10, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 152
    .line 153
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    .line 155
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v10, Lcom/mycompany/app/view/MyAreaView;

    .line 162
    .line 163
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyAreaView;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    const/high16 v11, 0x43200000    # 160.0f

    .line 167
    .line 168
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    float-to-int v11, v11

    .line 173
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    invoke-direct {v12, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 179
    .line 180
    iput v11, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    .line 182
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    new-instance v11, Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    const/4 v12, 0x0

    .line 194
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    .line 199
    .line 200
    const/high16 v13, -0x5f000000

    .line 201
    .line 202
    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    .line 204
    .line 205
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    .line 207
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 208
    .line 209
    invoke-direct {v14, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    const v15, 0x800053

    .line 213
    .line 214
    .line 215
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    .line 217
    invoke-virtual {v1, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    .line 227
    .line 228
    const/high16 v15, 0x41800000    # 16.0f

    .line 229
    .line 230
    invoke-virtual {v14, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    .line 235
    .line 236
    sget v7, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 237
    .line 238
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(I)V

    .line 239
    .line 240
    .line 241
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 242
    .line 243
    invoke-virtual {v14, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .line 251
    invoke-direct {v7, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .line 253
    .line 254
    const/high16 v13, 0x3f800000    # 1.0f

    .line 255
    .line 256
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 257
    .line 258
    invoke-virtual {v11, v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    .line 261
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 262
    .line 263
    invoke-direct {v7, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    .line 274
    .line 275
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 276
    .line 277
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 281
    .line 282
    invoke-direct {v3, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    .line 284
    .line 285
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 286
    .line 287
    invoke-virtual {v11, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    .line 289
    .line 290
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 291
    .line 292
    sget v9, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 293
    .line 294
    sget v12, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 295
    .line 296
    invoke-direct {v3, v0, v5, v9, v12}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 297
    .line 298
    .line 299
    const/high16 v9, -0x5f000000

    .line 300
    .line 301
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 302
    .line 303
    .line 304
    const/16 v9, 0x8

    .line 305
    .line 306
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 313
    .line 314
    iput-object v8, v0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 315
    .line 316
    iput-object v4, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 317
    .line 318
    iput-object v6, v0, Lcom/mycompany/app/main/image/MainImageQuick;->n1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 319
    .line 320
    iput-object v10, v0, Lcom/mycompany/app/main/image/MainImageQuick;->o1:Lcom/mycompany/app/view/MyAreaView;

    .line 321
    .line 322
    iput-object v11, v0, Lcom/mycompany/app/main/image/MainImageQuick;->p1:Landroid/widget/LinearLayout;

    .line 323
    .line 324
    iput-object v7, v0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 325
    .line 326
    iput-object v14, v0, Lcom/mycompany/app/main/image/MainImageQuick;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 327
    .line 328
    iput-object v3, v0, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 329
    .line 330
    new-instance v3, Lcom/mycompany/app/main/image/MainImageQuick$2;

    .line 331
    .line 332
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImageQuick$2;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 336
    .line 337
    .line 338
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->j1:Z

    .line 339
    .line 340
    if-eqz v1, :cond_1

    .line 341
    .line 342
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 343
    .line 344
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageQuick;->g1:Ljava/lang/String;

    .line 345
    .line 346
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImageQuick;->h1:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v5, v0, Lcom/mycompany/app/main/image/MainImageQuick;->i1:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    new-instance v6, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 354
    .line 355
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 356
    .line 357
    .line 358
    iput-object v3, v6, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 359
    .line 360
    iput-object v4, v6, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 361
    .line 362
    iput-object v5, v6, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 363
    .line 364
    iput-object v6, v1, Lcom/mycompany/app/main/image/MainImageView;->x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 365
    .line 366
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 367
    .line 368
    const/4 v3, 0x4

    .line 369
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 373
    .line 374
    new-instance v4, Lcom/mycompany/app/main/image/MainImageQuick$3;

    .line 375
    .line 376
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/image/MainImageQuick$3;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v0, v2, v2, v4}, Lcom/mycompany/app/main/image/MainImageView;->q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 383
    .line 384
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 388
    .line 389
    new-instance v3, Lcom/mycompany/app/main/image/MainImageQuick$4;

    .line 390
    .line 391
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImageQuick$4;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 392
    .line 393
    .line 394
    const/4 v4, 0x2

    .line 395
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/mycompany/app/main/image/MainImageView;->q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 399
    .line 400
    if-nez v1, :cond_2

    .line 401
    .line 402
    goto :goto_0

    .line 403
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$5;

    .line 404
    .line 405
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$5;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    .line 410
    .line 411
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->W1:Landroid/view/OrientationEventListener;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->W1:Landroid/view/OrientationEventListener;

    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-object v1, v0, Lcom/mycompany/app/view/MySizeFrame;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->l()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->l()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->n1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->n1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->o1:Lcom/mycompany/app/view/MyAreaView;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->c()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->o1:Lcom/mycompany/app/view/MyAreaView;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 78
    .line 79
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 87
    .line 88
    :cond_8
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->g1:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->h1:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->i1:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->p1:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->u1:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->x1:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 115
    .line 116
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->A0()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageQuick;->z0()V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1f

    .line 5
    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    array-length p1, p3

    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    aget p2, p3, p1

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/16 p2, 0xe

    .line 20
    .line 21
    invoke-static {p2, p0, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->O1:Landroid/net/Uri;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final w0(Z)Lcom/mycompany/app/main/image/MainImageView;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 7
    .line 8
    return-object p1
.end method

.method public final x0(Z)Lcom/mycompany/app/main/image/MainImageView;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 7
    .line 8
    return-object p1
.end method

.method public final y0(Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->U1:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->l1:Lcom/mycompany/app/main/image/MainImageView;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-static {v0, v2, p1}, Lcom/mycompany/app/main/MainUtil;->n0(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    invoke-static {v0, v2, p1}, Lcom/mycompany/app/main/MainUtil;->n0(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    :goto_0
    if-nez v0, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    div-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    invoke-static {v0, v1, p1}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    return-object v0

    .line 81
    :catch_0
    :cond_5
    :goto_1
    return-object p1
.end method

.method public final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->T1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->T1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->R1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
