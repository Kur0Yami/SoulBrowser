.class Lcom/mycompany/app/main/image/MainImageQuick$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$18;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$18;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 7
    .line 8
    .line 9
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
