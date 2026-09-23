.class Lcom/mycompany/app/web/WebVideoFull$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$17$1;->c:Lcom/mycompany/app/web/WebVideoFull$17;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$17$1;->c:Lcom/mycompany/app/web/WebVideoFull$17;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$17;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$17;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
