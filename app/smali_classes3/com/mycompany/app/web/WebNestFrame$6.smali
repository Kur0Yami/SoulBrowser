.class Lcom/mycompany/app/web/WebNestFrame$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Z

.field public final synthetic g:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$6;->g:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebNestFrame$6;->c:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebNestFrame$6;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$6;->g:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame$6;->f:Z

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebNestFrame;->w:Z

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame$6;->c:I

    .line 12
    .line 13
    invoke-interface {v1, v3, v2, v0}, Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;->e(IZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
