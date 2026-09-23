.class Lcom/mycompany/app/web/WebVideoFull$79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$79;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$79;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->h1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->h1:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, v0, Lcom/mycompany/app/web/WebVideoFull;->E0:I

    .line 10
    .line 11
    iput v2, v0, Lcom/mycompany/app/web/WebVideoFull;->F0:I

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v3, "0"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const-string v3, "/"

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    array-length v3, v1

    .line 49
    const/4 v6, 0x2

    .line 50
    if-eq v3, v6, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    aget-object v3, v1, v2

    .line 54
    .line 55
    invoke-static {v3}, Lcom/mycompany/app/web/WebVideoFull;->b0(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    aget-object v1, v1, v4

    .line 60
    .line 61
    invoke-static {v1}, Lcom/mycompany/app/web/WebVideoFull;->b0(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iput v3, v0, Lcom/mycompany/app/web/WebVideoFull;->E0:I

    .line 71
    .line 72
    iput v1, v0, Lcom/mycompany/app/web/WebVideoFull;->F0:I

    .line 73
    .line 74
    int-to-float v1, v1

    .line 75
    int-to-float v3, v3

    .line 76
    div-float/2addr v1, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    move v1, v5

    .line 79
    :goto_2
    iput v1, v0, Lcom/mycompany/app/web/WebVideoFull;->G0:F

    .line 80
    .line 81
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebVideoFull;->H0:Z

    .line 82
    .line 83
    cmpg-float v1, v1, v5

    .line 84
    .line 85
    if-gez v1, :cond_6

    .line 86
    .line 87
    move v2, v4

    .line 88
    :cond_6
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebVideoFull;->I0:Z

    .line 89
    .line 90
    if-eqz v2, :cond_7

    .line 91
    .line 92
    return-void

    .line 93
    :cond_7
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->P(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
