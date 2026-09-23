.class Lcom/mycompany/app/dialog/DialogInfo$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$15;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo$15;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M6(Landroid/media/MediaMetadataRetriever;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x12

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v3, 0x13

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v4, 0x18

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/16 v5, 0x9

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->I6(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M6(Landroid/media/MediaMetadataRetriever;)V

    .line 78
    .line 79
    .line 80
    move v9, v2

    .line 81
    move v10, v3

    .line 82
    move v11, v4

    .line 83
    :goto_1
    move-wide v12, v5

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    const-wide/16 v5, 0x0

    .line 87
    .line 88
    move v9, v2

    .line 89
    move v10, v9

    .line 90
    move v11, v10

    .line 91
    goto :goto_1

    .line 92
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    new-instance v7, Lcom/mycompany/app/dialog/DialogInfo$15$1;

    .line 98
    .line 99
    move-object v8, p0

    .line 100
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/dialog/DialogInfo$15$1;-><init>(Lcom/mycompany/app/dialog/DialogInfo$15;IIIJ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_3
    return-void
.end method
