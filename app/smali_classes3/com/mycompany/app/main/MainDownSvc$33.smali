.class Lcom/mycompany/app/main/MainDownSvc$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

.field public final synthetic l:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Ljava/util/List;Ljava/lang/String;IIIZLcom/mycompany/app/main/MainDownSvc$DownImageListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$33;->l:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$33;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$33;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/main/MainDownSvc$33;->g:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/main/MainDownSvc$33;->h:I

    .line 13
    .line 14
    iput p6, p0, Lcom/mycompany/app/main/MainDownSvc$33;->i:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/mycompany/app/main/MainDownSvc$33;->j:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/mycompany/app/main/MainDownSvc$33;->k:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$33;->l:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$33;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/mycompany/app/main/MainDownSvc$33;->j:Z

    .line 8
    .line 9
    sget-wide v6, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$33;->c:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v4, 0x0

    .line 20
    move v11, v4

    .line 21
    :goto_0
    iget v4, p0, Lcom/mycompany/app/main/MainDownSvc$33;->g:I

    .line 22
    .line 23
    if-ge v11, v4, :cond_3

    .line 24
    .line 25
    iget-object v10, p0, Lcom/mycompany/app/main/MainDownSvc$33;->k:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 26
    .line 27
    move-object v12, v10

    .line 28
    check-cast v12, Lcom/mycompany/app/main/MainDownSvc$32;

    .line 29
    .line 30
    iget-object v4, v12, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 31
    .line 32
    iget-boolean v4, v4, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget v4, p0, Lcom/mycompany/app/main/MainDownSvc$33;->h:I

    .line 38
    .line 39
    mul-int/2addr v4, v11

    .line 40
    iget v8, p0, Lcom/mycompany/app/main/MainDownSvc$33;->i:I

    .line 41
    .line 42
    add-int/2addr v4, v8

    .line 43
    if-lt v4, v0, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    :try_start_0
    invoke-static/range {v1 .. v10}, Lcom/mycompany/app/down/DownSaveImage;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$DownImageListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v8, 0x4

    .line 62
    iput v8, v4, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 63
    .line 64
    invoke-virtual {v12, v2, v5}, Lcom/mycompany/app/main/MainDownSvc$32;->b(Ljava/util/List;Z)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method
