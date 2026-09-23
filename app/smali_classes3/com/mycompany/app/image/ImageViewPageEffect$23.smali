.class Lcom/mycompany/app/image/ImageViewPageEffect$23;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$23;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$23;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget v0, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget v0, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    if-ne v0, v2, :cond_3

    .line 13
    .line 14
    iget-object v0, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    if-eqz p3, :cond_3

    .line 21
    .line 22
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 43
    .line 44
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 45
    .line 46
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3, v1, v2, v0}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 58
    .line 59
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 60
    .line 61
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 68
    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_3

    .line 74
    .line 75
    :cond_1
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-nez p3, :cond_3

    .line 82
    .line 83
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p3, v1, v1}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-nez p3, :cond_3

    .line 90
    .line 91
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 92
    .line 93
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 94
    .line 95
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, ""

    .line 98
    .line 99
    invoke-virtual {p3, v0, v2, v3}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->q:Lcom/mycompany/app/web/WebLoadWrap;

    .line 106
    .line 107
    if-eqz p3, :cond_3

    .line 108
    .line 109
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 110
    .line 111
    invoke-virtual {p3, v0}, Lcom/mycompany/app/web/WebLoadWrap;->c(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    iget-object p3, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 115
    .line 116
    if-eqz p3, :cond_4

    .line 117
    .line 118
    invoke-virtual {p3, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 119
    .line 120
    .line 121
    :cond_4
    const/4 p3, 0x0

    .line 122
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/image/ImageViewPageEffect;->i0(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$23;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/image/ImageViewPageEffect;->i0(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->d0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
