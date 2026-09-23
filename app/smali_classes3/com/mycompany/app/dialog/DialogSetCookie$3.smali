.class Lcom/mycompany/app/dialog/DialogSetCookie$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetCookie;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie$3;->a:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    sget p3, Lcom/mycompany/app/dialog/DialogSetCookie;->k0:I

    .line 2
    .line 3
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogSetCookie$3;->a:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    if-eq p2, p4, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/mycompany/app/dialog/DialogSetCookie;->B(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/mycompany/app/dialog/DialogSetCookie;->B(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
