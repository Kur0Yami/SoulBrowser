.class Lcom/mycompany/app/dialog/DialogSetTrans$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$8;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogSetTrans;->u0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$8;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTrans;->B()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
