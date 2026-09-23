.class Lcom/mycompany/app/main/MainDownSvc$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

.field public final synthetic k:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$19;->k:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$19;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$19;->f:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/main/MainDownSvc$19;->g:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/main/MainDownSvc$19;->h:I

    .line 13
    .line 14
    iput p6, p0, Lcom/mycompany/app/main/MainDownSvc$19;->i:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/mycompany/app/main/MainDownSvc$19;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$19;->k:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget v6, v0, Lcom/mycompany/app/main/MainDownSvc$19;->i:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc$19;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 10
    .line 11
    if-eqz v3, :cond_7

    .line 12
    .line 13
    iget-object v12, v0, Lcom/mycompany/app/main/MainDownSvc$19;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 14
    .line 15
    if-nez v12, :cond_0

    .line 16
    .line 17
    goto :goto_5

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$19;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v13

    .line 24
    const/4 v15, 0x0

    .line 25
    :goto_0
    iget v4, v0, Lcom/mycompany/app/main/MainDownSvc$19;->g:I

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-ge v15, v4, :cond_1

    .line 29
    .line 30
    iget v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 31
    .line 32
    if-eq v4, v5, :cond_2

    .line 33
    .line 34
    :cond_1
    :goto_1
    move v14, v5

    .line 35
    goto :goto_4

    .line 36
    :cond_2
    iget v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 37
    .line 38
    mul-int/2addr v4, v15

    .line 39
    iget v7, v0, Lcom/mycompany/app/main/MainDownSvc$19;->h:I

    .line 40
    .line 41
    add-int/2addr v4, v7

    .line 42
    if-lt v4, v13, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget v7, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 46
    .line 47
    if-lt v4, v7, :cond_4

    .line 48
    .line 49
    move v8, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 v8, 0x0

    .line 52
    :goto_2
    iget v9, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 53
    .line 54
    const/16 v10, 0xa

    .line 55
    .line 56
    if-ne v9, v10, :cond_6

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    if-ne v4, v7, :cond_6

    .line 61
    .line 62
    :cond_5
    move v7, v8

    .line 63
    move v8, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_6
    move v7, v8

    .line 66
    const/4 v8, 0x0

    .line 67
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Ljava/lang/String;

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    move/from16 v16, v5

    .line 76
    .line 77
    move v5, v4

    .line 78
    move-object v4, v9

    .line 79
    const/4 v9, 0x0

    .line 80
    move/from16 v14, v16

    .line 81
    .line 82
    :try_start_0
    invoke-static/range {v2 .. v12}, Lcom/mycompany/app/down/DownSaveSplit;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    add-int/lit8 v15, v15, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    iput-boolean v14, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 89
    .line 90
    invoke-interface {v12, v3}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_4
    iget v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 95
    .line 96
    if-ne v1, v14, :cond_7

    .line 97
    .line 98
    invoke-interface {v12, v3}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 99
    .line 100
    .line 101
    :cond_7
    :goto_5
    return-void
.end method
