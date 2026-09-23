.class Lcom/mycompany/app/main/MainApp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$2;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$2;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->m(Landroid/content/Context;)Landroid/webkit/CookieManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainApp;->t:Z

    .line 20
    .line 21
    return-void
.end method
