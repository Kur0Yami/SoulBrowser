.class Lcom/mycompany/app/web/WebVideoFull$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$46;->f:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebVideoFull$46;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$46;->f:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull$46;->c:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->I(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
