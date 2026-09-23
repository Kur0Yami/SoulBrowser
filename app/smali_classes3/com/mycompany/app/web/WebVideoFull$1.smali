.class Lcom/mycompany/app/web/WebVideoFull$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$1;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$1;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebVideoFull;->P0:Z

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, v0, Lcom/mycompany/app/web/WebVideoFull;->Q0:I

    .line 8
    .line 9
    iput p1, v0, Lcom/mycompany/app/web/WebVideoFull;->R0:I

    .line 10
    .line 11
    iput p1, v0, Lcom/mycompany/app/web/WebVideoFull;->S0:I

    .line 12
    .line 13
    iput p1, v0, Lcom/mycompany/app/web/WebVideoFull;->T0:I

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->Q()V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/web/WebVideoProgress;->h(II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
