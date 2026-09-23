.class Lcom/mycompany/app/image/ImageListAdapter$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter$1;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter$1;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 2
    .line 3
    iget v0, p2, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget v0, p2, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    iget-object v0, p2, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object p3, p2, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 42
    .line 43
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 44
    .line 45
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p3, v1, v2, v0}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageListAdapter;->C(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 57
    .line 58
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 59
    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 67
    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    :cond_1
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-nez p3, :cond_3

    .line 81
    .line 82
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {p3, v0, v0}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-nez p3, :cond_3

    .line 90
    .line 91
    iget-object p3, p2, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 92
    .line 93
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 94
    .line 95
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 96
    .line 97
    const-string v2, ""

    .line 98
    .line 99
    invoke-virtual {p3, v0, v1, v2}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object p3, p2, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 106
    .line 107
    if-eqz p3, :cond_3

    .line 108
    .line 109
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 110
    .line 111
    invoke-interface {p3, v0}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->a(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    const/4 p3, 0x0

    .line 115
    invoke-static {p2, p1, p3}, Lcom/mycompany/app/image/ImageListAdapter;->x(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/mycompany/app/image/ImageListAdapter;->v(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter$1;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 2
    .line 3
    invoke-static {p2, p1, p3}, Lcom/mycompany/app/image/ImageListAdapter;->x(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/mycompany/app/image/ImageListAdapter;->v(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageListAdapter;->z(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
