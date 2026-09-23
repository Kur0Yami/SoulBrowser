.class Lcom/mycompany/app/web/WebVideoFull$73;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$73;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$73;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->b0:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->G(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebVideoFull;->g0(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
