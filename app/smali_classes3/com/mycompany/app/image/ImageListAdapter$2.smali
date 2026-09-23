.class Lcom/mycompany/app/image/ImageListAdapter$2;
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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter$2;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter$2;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageListAdapter;->w(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 13
    .line 14
    .line 15
    iget p2, v0, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    .line 16
    .line 17
    if-nez p2, :cond_3

    .line 18
    .line 19
    iget p2, v0, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    if-ne p2, v1, :cond_4

    .line 24
    .line 25
    iget-object p2, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 26
    .line 27
    if-eqz p2, :cond_4

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    if-eqz p3, :cond_4

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object p3, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 54
    .line 55
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p3, v0, p1, p2}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object p2, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 64
    .line 65
    sget-object p3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_2

    .line 72
    .line 73
    sget-object p3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_4

    .line 88
    .line 89
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 90
    .line 91
    const/4 p3, 0x1

    .line 92
    invoke-static {p2, p3, p3}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_4

    .line 97
    .line 98
    iget-object p2, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 99
    .line 100
    iget p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 101
    .line 102
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 103
    .line 104
    const-string v0, ""

    .line 105
    .line 106
    invoke-virtual {p2, p3, p1, v0}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p2, v0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 113
    .line 114
    if-eqz p2, :cond_4

    .line 115
    .line 116
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 117
    .line 118
    invoke-interface {p2, p1}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->a(I)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter$2;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/image/ImageListAdapter$2;->a:Lcom/mycompany/app/image/ImageListAdapter;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p3, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    invoke-static {p3, p1}, Lcom/mycompany/app/image/ImageListAdapter;->w(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
