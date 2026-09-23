.class Lcom/mycompany/app/image/ImageViewPageScroll$51$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/image/ImageViewPageScroll$51;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll$51;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$51$1;->f:Lcom/mycompany/app/image/ImageViewPageScroll$51;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$51$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$51$1;->f:Lcom/mycompany/app/image/ImageViewPageScroll$51;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageScroll$51;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->Q:Lcom/mycompany/app/view/MyCoverView;

    .line 8
    .line 9
    if-eqz v3, :cond_3

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v7, v1, Lcom/mycompany/app/image/ImageViewPageScroll$51;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->S0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->q0()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->o0(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 42
    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput-boolean v4, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->I0:Z

    .line 50
    .line 51
    sput-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 54
    .line 55
    iget-object v6, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 56
    .line 57
    iget-object v8, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->m:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageScroll$52;

    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/mycompany/app/image/ImageViewPageScroll$52;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 62
    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    iget-object v11, v0, Lcom/mycompany/app/image/ImageViewPageScroll$51$1;->c:Ljava/lang/String;

    .line 67
    .line 68
    const-wide/16 v12, 0x0

    .line 69
    .line 70
    const/4 v14, 0x4

    .line 71
    const/4 v15, 0x0

    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    const/16 v19, 0x0

    .line 79
    .line 80
    const/16 v20, 0x0

    .line 81
    .line 82
    move-object/from16 v21, v1

    .line 83
    .line 84
    invoke-direct/range {v5 .. v21}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 85
    .line 86
    .line 87
    iput-object v5, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->p0:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 88
    .line 89
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageScroll$53;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/mycompany/app/image/ImageViewPageScroll$53;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return-void
.end method
