.class Lcom/mycompany/app/dialog/DialogDownFile$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$22$1;->c:Lcom/mycompany/app/dialog/DialogDownFile$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$22$1;->c:Lcom/mycompany/app/dialog/DialogDownFile$22;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile$22;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 4
    .line 5
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownFile;->O0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownFile;->O0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownFile;->C0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogDownFile;->z0:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-interface/range {v2 .. v8}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownFile$22;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFile;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
