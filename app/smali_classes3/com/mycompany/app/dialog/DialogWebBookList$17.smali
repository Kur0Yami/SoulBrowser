.class Lcom/mycompany/app/dialog/DialogWebBookList$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$17;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$17;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iput-object p3, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 25
    .line 26
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v1, p3}, Lcom/mycompany/app/main/MainListView2;->K(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x7

    .line 45
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 46
    .line 47
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->e7(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 52
    .line 53
    const/4 p2, 0x2

    .line 54
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 58
    .line 59
    iput-object p4, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 60
    .line 61
    new-instance p3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 62
    .line 63
    invoke-direct {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-boolean p2, p3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 67
    .line 68
    iput-boolean p2, p3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 69
    .line 70
    new-instance p2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p2, p3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 76
    .line 77
    new-instance p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 78
    .line 79
    invoke-direct {p2, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    new-instance p4, Lcom/mycompany/app/dialog/DialogWebBookList$19;

    .line 87
    .line 88
    invoke-direct {p4, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$19;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1, p2, p4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$17;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;->getIcon()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
