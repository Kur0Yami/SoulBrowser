.class Lcom/mycompany/app/dialog/DialogDownZip$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

.field public final synthetic j:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->j:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->c:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->f:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->g:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->h:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->i:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->j:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 4
    .line 5
    iget v5, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->h:I

    .line 6
    .line 7
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->i:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->c:Ljava/util/List;

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->f:I

    .line 12
    .line 13
    iget v4, p0, Lcom/mycompany/app/dialog/DialogDownZip$19;->g:I

    .line 14
    .line 15
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/down/DownSaveZip;->b(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
