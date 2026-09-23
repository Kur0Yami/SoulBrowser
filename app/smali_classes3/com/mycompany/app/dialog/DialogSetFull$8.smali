.class Lcom/mycompany/app/dialog/DialogSetFull$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSetFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$8;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetFull;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull$8;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetFull;->C(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
