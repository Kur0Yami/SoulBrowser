.class public final Lcom/google/android/gms/common/images/zae;
.super Lcom/google/android/gms/common/images/zag;
.source "SourceFile"


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/images/zae;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zae;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    instance-of p4, v0, Lcom/google/android/gms/internal/base/zai;

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/base/zai;

    .line 22
    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    const/4 p4, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez p3, :cond_2

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    :cond_2
    move p2, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    move p2, p4

    .line 33
    :goto_1
    if-eqz p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    instance-of v3, p3, Lcom/google/android/gms/internal/base/zah;

    .line 42
    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    check-cast p3, Lcom/google/android/gms/internal/base/zah;

    .line 46
    .line 47
    iget-object p3, p3, Lcom/google/android/gms/internal/base/zah;->o:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move-object p3, v1

    .line 51
    :cond_5
    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/base/zah;

    .line 52
    .line 53
    invoke-direct {v3, p3, p1}, Lcom/google/android/gms/internal/base/zah;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v3

    .line 57
    :cond_6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    instance-of p3, v0, Lcom/google/android/gms/internal/base/zai;

    .line 61
    .line 62
    if-nez p3, :cond_7

    .line 63
    .line 64
    if-eqz p1, :cond_8

    .line 65
    .line 66
    if-eqz p2, :cond_8

    .line 67
    .line 68
    check-cast p1, Lcom/google/android/gms/internal/base/zah;

    .line 69
    .line 70
    iget p2, p1, Lcom/google/android/gms/internal/base/zah;->h:I

    .line 71
    .line 72
    iput p2, p1, Lcom/google/android/gms/internal/base/zah;->g:I

    .line 73
    .line 74
    iput v2, p1, Lcom/google/android/gms/internal/base/zah;->j:I

    .line 75
    .line 76
    const/16 p2, 0xfa

    .line 77
    .line 78
    iput p2, p1, Lcom/google/android/gms/internal/base/zah;->i:I

    .line 79
    .line 80
    iput p4, p1, Lcom/google/android/gms/internal/base/zah;->c:I

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_7
    check-cast v0, Lcom/google/android/gms/internal/base/zai;

    .line 87
    .line 88
    throw v1

    .line 89
    :cond_8
    return-void
.end method
