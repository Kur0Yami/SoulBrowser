.class Lcom/mycompany/app/dialog/DialogInfo$14;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$14;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo$14;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v2, :cond_3

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->M6(Landroid/media/MediaMetadataRetriever;)V

    .line 34
    .line 35
    .line 36
    move-object v2, v3

    .line 37
    :goto_0
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/4 v3, 0x7

    .line 40
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->U6(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->U6(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->U6(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/4 v6, 0x6

    .line 67
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->U6(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/16 v7, 0x9

    .line 76
    .line 77
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->I6(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->M6(Landroid/media/MediaMetadataRetriever;)V

    .line 86
    .line 87
    .line 88
    move-object v2, v3

    .line 89
    move-object v3, v4

    .line 90
    move-object v4, v5

    .line 91
    move-object v5, v6

    .line 92
    :goto_1
    move-wide v6, v7

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    const-wide/16 v7, 0x0

    .line 95
    .line 96
    move-object v2, v3

    .line 97
    move-object v4, v2

    .line 98
    move-object v5, v4

    .line 99
    goto :goto_1

    .line 100
    :goto_2
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 101
    .line 102
    if-nez v8, :cond_2

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$14$1;

    .line 106
    .line 107
    move-object v1, p0

    .line 108
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/dialog/DialogInfo$14$1;-><init>(Lcom/mycompany/app/dialog/DialogInfo$14;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_3
    return-void
.end method
