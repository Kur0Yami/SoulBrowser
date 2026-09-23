.class Lcom/mycompany/app/main/MainDownSvc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainDownSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$3;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$3;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->S:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-wide v3, v0, Lcom/mycompany/app/main/MainDownSvc;->p:J

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v5, v3, v5

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    if-nez v5, :cond_2

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_2
    sget v5, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-ge v5, v6, :cond_3

    .line 29
    .line 30
    move v5, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v7, 0x5

    .line 33
    if-le v5, v7, :cond_4

    .line 34
    .line 35
    move v5, v7

    .line 36
    :cond_4
    :goto_1
    const-wide/32 v7, 0x36ee80

    .line 37
    .line 38
    .line 39
    int-to-long v9, v5

    .line 40
    mul-long/2addr v9, v7

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    sub-long/2addr v7, v3

    .line 46
    cmp-long v3, v7, v9

    .line 47
    .line 48
    if-gez v3, :cond_5

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz v3, :cond_a

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_6

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    move v7, v5

    .line 68
    :cond_7
    :goto_2
    if-ge v7, v4, :cond_9

    .line 69
    .line 70
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    check-cast v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 77
    .line 78
    if-nez v8, :cond_8

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_8
    iget-boolean v8, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_9
    invoke-virtual {v0, v5, v6}, Lcom/mycompany/app/main/MainDownSvc;->Q(ZZ)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    :cond_a
    :goto_3
    const-wide/32 v3, 0x927c0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method
