.class Lcom/mycompany/app/main/MainUtil$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/main/MainUtil$15;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mycompany/app/main/MainUtil$15;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mycompany/app/main/MainUtil$15;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/main/MainUtil$15;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainUtil$15;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->k(Landroid/content/Context;)Landroid/content/ClipboardManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mycompany/app/main/MainUtil$15;->f:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/main/MainUtil$15;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/mycompany/app/main/MainUtil$15;->h:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/main/MainUtil$15$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainUtil$15$1;-><init>(Lcom/mycompany/app/main/MainUtil$15;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :goto_0
    return-void
.end method
