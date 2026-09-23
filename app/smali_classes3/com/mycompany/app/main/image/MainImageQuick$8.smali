.class Lcom/mycompany/app/main/image/MainImageQuick$8;
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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$8;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 2
    .line 3
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$9;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick$8;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 6
    .line 7
    invoke-direct {v0, v1, v1}, Lcom/mycompany/app/main/image/MainImageQuick$9;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->W1:Landroid/view/OrientationEventListener;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    :cond_0
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
