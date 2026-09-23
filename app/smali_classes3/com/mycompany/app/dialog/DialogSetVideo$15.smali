.class Lcom/mycompany/app/dialog/DialogSetVideo$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo$15;->a:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo$15;->a:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/4 p3, 0x4

    .line 32
    invoke-virtual {p2, p3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
