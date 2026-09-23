.class Lcom/mycompany/app/main/image/MainImagePreview$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$28;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$28;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->z0(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->V1(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v2, v1, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 32
    .line 33
    iput v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->O1:I

    .line 34
    .line 35
    iget v1, v1, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 36
    .line 37
    iput v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->P1:I

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_0
    return-void

    .line 56
    :catch_0
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->a1()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
