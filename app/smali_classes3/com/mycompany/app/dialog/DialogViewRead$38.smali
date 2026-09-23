.class Lcom/mycompany/app/dialog/DialogViewRead$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogViewRead;->setValAnimShow(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$38;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v1, -0x1000000

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, -0x1

    .line 9
    :goto_0
    sget v2, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewRead$38;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 12
    .line 13
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->y0(IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
