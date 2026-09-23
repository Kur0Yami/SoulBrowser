.class Lcom/mycompany/app/web/WebEmgDialog$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$36;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$36;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebEmgDialog;->z(ILjava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
