.class Lcom/mycompany/app/dialog/DialogExtract$11$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogExtract$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract$11;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->g:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->g:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->f:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget v3, p0, Lcom/mycompany/app/dialog/DialogExtract$11$3;->c:I

    .line 9
    .line 10
    invoke-static {v0, v3, v1, v2}, Lcom/mycompany/app/dialog/DialogExtract;->D(Lcom/mycompany/app/dialog/DialogExtract;ILjava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
