.class Lcom/mycompany/app/image/ImageThumbAdapter$3;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageThumbAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageThumbAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageThumbAdapter$3;->a:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter$3;->a:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 25
    .line 26
    iget v2, v1, Lcom/mycompany/app/image/ImageThumbAdapter;->g:I

    .line 27
    .line 28
    if-nez v2, :cond_4

    .line 29
    .line 30
    iget-object v2, v1, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    if-eqz p3, :cond_4

    .line 35
    .line 36
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 37
    .line 38
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 39
    .line 40
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 47
    .line 48
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    :cond_3
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_4

    .line 61
    .line 62
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-static {p3, v2, v2}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    iget-object p3, v1, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 72
    .line 73
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 74
    .line 75
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    invoke-virtual {p3, v1, v2, v3}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 83
    .line 84
    if-eq v0, p1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    check-cast p2, Lcom/mycompany/app/view/MyThumbView;

    .line 88
    .line 89
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_0
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 25
    .line 26
    if-eq v0, p1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    check-cast p2, Lcom/mycompany/app/view/MyThumbView;

    .line 30
    .line 31
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_4
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    :cond_5
    :goto_0
    return-void
.end method
