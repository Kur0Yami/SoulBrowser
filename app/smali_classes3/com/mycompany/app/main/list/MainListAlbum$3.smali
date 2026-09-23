.class Lcom/mycompany/app/main/list/MainListAlbum$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum$3;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$3;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 5
    .line 6
    iget p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 39
    .line 40
    return-void
.end method
