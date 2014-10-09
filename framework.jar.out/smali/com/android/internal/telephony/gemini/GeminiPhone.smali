.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field public static EVENT_3G_SWITCH_DONE:Ljava/lang/String; = null

.field public static EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String; = null

.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field public static EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String; = null

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field public static EVENT_PRE_3G_SWITCH:Ljava/lang/String; = null

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static EXTRA_3G_SIM:Ljava/lang/String; = null

.field public static EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String; = null

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field private static final H:[I = null

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field private static x:Landroid/content/SharedPreferences;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Z

.field private F:I

.field private G:I

.field private I:Ljava/lang/Runnable;

.field private J:Ljava/lang/Runnable;

.field private final K:Landroid/content/BroadcastReceiver;

.field private L:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private M:Ljava/lang/Runnable;

.field a:Ljava/lang/String;

.field private b:Lcom/android/internal/telephony/Phone;

.field private c:Lcom/android/internal/telephony/Phone;

.field private d:Lcom/android/internal/telephony/Phone;

.field private e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Landroid/os/RegistrantList;

.field private s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private t:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private u:I

.field private v:Z

.field private w:Z

.field private y:I

.field private z:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 200
    const-string v0, "com.mtk.PRE_3G_SWITCH"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    .line 201
    const-string v0, "com.mtk.3G_SWITCH_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    .line 202
    const-string v0, "com.mtk.EVENT_3G_SWITCH_START_MD_RESET"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    .line 203
    const-string v0, "com.mtk.EVENT_3G_SWITCH_LOCK_CHANGED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    .line 205
    const-string v0, "3G_SIM"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    .line 206
    const-string v0, "com.mtk.EXTRA_3G_SWITCH_LOCKED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    .line 240
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    .line 157
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:I

    .line 158
    iput-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    .line 159
    iput-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 168
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 169
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:I

    .line 173
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Landroid/os/RegistrantList;

    .line 214
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    .line 224
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:Z

    .line 226
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    .line 229
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    .line 230
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:I

    .line 238
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:I

    .line 478
    new-instance v0, Lcom/android/internal/telephony/gemini/f;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/f;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Ljava/lang/Runnable;

    .line 627
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    .line 733
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->K:Landroid/content/BroadcastReceiver;

    .line 3047
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/f;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3201
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:Ljava/lang/Runnable;

    .line 255
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    .line 256
    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    .line 257
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 259
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:Z

    .line 261
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v1

    .line 266
    if-ne v1, v2, :cond_1

    .line 267
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DEFAULT"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 275
    :goto_1
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSwitch3GPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_2
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 291
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "action_pin_dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 306
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 269
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "OP"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicy create exception (policyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 271
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 272
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch 3G Policy Missing (mSwitch3GPolicy=null, policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    return p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processShowSimDialog, mShowNewSimDetectedPending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 348
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processShowSimDialog] mDetectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 360
    const-string v0, "NEW"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastNewSIMDetected(II)V

    .line 369
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 371
    :cond_1
    return-void

    .line 363
    :cond_2
    const-string v0, "REMOVE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastDefaultSIMRemoved(I)V

    goto :goto_0

    .line 366
    :cond_3
    const-string v0, "SWAP"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastSIMSwapped(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 696
    if-nez p1, :cond_0

    .line 697
    const-string v0, "To re-register SIM1 inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    :goto_0
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 701
    const-string v0, "To re-register SIM2 inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 705
    :cond_1
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 793
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:I

    return p1
.end method

.method private b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-eq v0, v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 384
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 395
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :cond_2
    const-string/jumbo v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 801
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method private b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3093
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 3095
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v0

    .line 3097
    if-eqz v0, :cond_0

    .line 3098
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v0

    move v1, v0

    .line 3102
    :goto_0
    if-eqz v1, :cond_5

    .line 3103
    if-nez p1, :cond_2

    .line 3104
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType:Auto,GSM only"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3106
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3109
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3122
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 3128
    :goto_3
    return v1

    .line 3100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 3108
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 3110
    :cond_2
    if-ne p1, v3, :cond_4

    .line 3111
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType:GSM only,Auto"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3114
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 3116
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 3118
    :cond_4
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType: GSM only, GSM only"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3120
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 3125
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 3126
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    return p1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 487
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:Z

    .line 488
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()Z

    .line 489
    const-string/jumbo v0, "ril.iccid.sim1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    .line 490
    const-string/jumbo v0, "ril.iccid.sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    .line 492
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], counter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    :goto_0
    return-void

    .line 500
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:I

    .line 501
    const-string/jumbo v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 503
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    .line 505
    :cond_2
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    .line 508
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 511
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 518
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsertedStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 528
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_6

    .line 529
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_8

    .line 530
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 537
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 538
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v1

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_a

    .line 540
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 541
    if-eqz v0, :cond_9

    .line 542
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 544
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 556
    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:Z

    goto/16 :goto_0

    .line 532
    :cond_8
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_1

    .line 546
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_2

    .line 549
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 550
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_2

    .line 554
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_2
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 3175
    const/4 v0, 0x0

    .line 3176
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3177
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3179
    if-nez p1, :cond_1

    .line 3180
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    .line 3184
    :cond_0
    :goto_0
    const-string v2, "3G_SIM_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3186
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-eqz v2, :cond_2

    .line 3187
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3188
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3189
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    :goto_1
    return-void

    .line 3181
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3182
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    goto :goto_0

    .line 3191
    :cond_2
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 805
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 560
    const-string/jumbo v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:Z

    .line 584
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 585
    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    .line 590
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 591
    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    .line 596
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_0

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_4

    .line 598
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 605
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v0

    .line 607
    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_6

    .line 608
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 609
    if-eqz v0, :cond_5

    .line 610
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 612
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 624
    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:Z

    .line 625
    return-void

    .line 587
    :cond_2
    const-string/jumbo v0, "ril.iccid.sim1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    goto :goto_0

    .line 593
    :cond_3
    const-string/jumbo v0, "ril.iccid.sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    goto :goto_1

    .line 600
    :cond_4
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_2

    .line 614
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_3

    .line 617
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 618
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 619
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_3

    .line 622
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_3
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 809
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    return p1
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 636
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:Z

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 638
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:Z

    .line 639
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 667
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string/jumbo v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 644
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastSIMInsertedStatus(I)V

    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()V

    .line 647
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSIMInfo mAllowShowNewSimForSIM1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 649
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 652
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSIMInfo mAllowShowNewSimForSIM2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 654
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 657
    :cond_2
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 659
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 666
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    return p1
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 670
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:Z

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 672
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:Z

    .line 673
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 693
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string/jumbo v0, "start initializing radio power"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 679
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:Z

    if-eqz v0, :cond_1

    .line 680
    const-string/jumbo v0, "query SIM Missing status for gemini card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 681
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:Z

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->enableGPRSAlwaysAttachIfNecessary()V

    .line 690
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 692
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2913
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v0

    return v0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 2918
    const-string/jumbo v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    return v0
.end method

.method private i()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 3132
    .line 3133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3134
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3135
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v3

    .line 3136
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-nez v0, :cond_3

    .line 3139
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v0, :cond_2

    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    :goto_0
    iget v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    :cond_0
    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 3150
    :goto_1
    sparse-switch v1, :sswitch_data_0

    move v0, v7

    .line 3168
    :goto_2
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3GS] target3GSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selected3G="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :goto_3
    return v0

    :cond_1
    move-object v4, v5

    .line 3141
    goto :goto_0

    .line 3147
    :cond_2
    const-string v0, "PHONE"

    const-string/jumbo v1, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_1

    :sswitch_0
    move v0, v6

    .line 3153
    goto :goto_2

    .line 3156
    :sswitch_1
    const/4 v0, 0x1

    .line 3157
    goto :goto_2

    :sswitch_2
    move v0, v7

    .line 3161
    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_3

    .line 3150
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 3196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 3197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3199
    return-void
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:I

    return v0
.end method

.method private k()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/NativeCheck;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/NativeCheck;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/NativeCheck;->checkMtk()V

    .line 3302
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()V

    return-void
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    return v0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic p(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic q(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic r(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    return v0
.end method

.method static synthetic s(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 2146
    return-void
.end method

.method public acceptCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1185
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2565
    return-void
.end method

.method public activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1618
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1619
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canConferenceGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public canTransferGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2707
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2711
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1757
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1758
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1761
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1762
    return-void
.end method

.method public cleanupApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1531
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2182
    return-void
.end method

.method public clearDisconnectedGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1221
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 2162
    return-void
.end method

.method public conferenceGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1201
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1240
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1949
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 988
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2424
    return-void
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1463
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1464
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 316
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2905
    return-void
.end method

.method public doSimAuthenticationGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1909
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1910
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2909
    return-void
.end method

.method public doUSimAuthenticationGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1914
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2476
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()Z

    .line 2477
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1520
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()Z

    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 2166
    return-void
.end method

.method public enableEnhancedVoicePrivacyGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1205
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3256
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3257
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3258
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3259
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    packed-switch v1, :pswitch_data_0

    .line 3272
    :goto_0
    return-void

    .line 3262
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_0

    .line 3266
    :pswitch_1
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_0

    .line 3260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2420
    return-void
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1459
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1460
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2619
    return-void
.end method

.method public exitEmergencyCallbackModeGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1670
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 2178
    return-void
.end method

.method public explicitCallTransferGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1217
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2998
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2999
    const-string v1, "gsm.baseband.capability2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3000
    if-gt v0, v2, :cond_0

    if-le v1, v2, :cond_1

    .line 3001
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 3003
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2968
    .line 2970
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v2

    if-lez v2, :cond_1

    .line 2972
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_3

    .line 2974
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    :cond_0
    invoke-interface {v2, v3, v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2987
    :cond_1
    :goto_1
    return v0

    :cond_2
    move-object v0, v1

    .line 2974
    goto :goto_0

    .line 2981
    :cond_3
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[get3GSwitchAllowed3GSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2731
    return-void
.end method

.method public getAccumulatedCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1781
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 1782
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2735
    return-void
.end method

.method public getAccumulatedCallMeterMaximumGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1785
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 1786
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2321
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1363
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1364
    return-void
.end method

.method public getBackgroundCalGeminil(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2189
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2292
    return-void
.end method

.method public getCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1333
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1335
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2313
    return-void
.end method

.method public getCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1355
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1356
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1653
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1661
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMinGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersionGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2569
    return-void
.end method

.method public getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1622
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1623
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2727
    return-void
.end method

.method public getCurrentCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1777
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 1778
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2408
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1447
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1574
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getEfRatBalancing(I)I

    move-result v0

    return v0
.end method

.method public getEfRatBalancing(I)I
    .locals 1
    .parameter

    .prologue
    .line 3343
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 2170
    return-void
.end method

.method public getEnhancedVoicePrivacyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1208
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1209
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1586
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3514
    const/4 v0, 0x0

    .line 3515
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3516
    const/4 v0, 0x1

    .line 3518
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2699
    return-void
.end method

.method public getFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1749
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1750
    return-void
.end method

.method public getFirstFullNameInEfPnn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFirstFullNameInEfPnn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstFullNameInEfPnn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3472
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2185
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter

    .prologue
    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccRecordsLoadedGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1893
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1598
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLastCallFailCauseGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1805
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1590
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 2595
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMuteGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 2377
    return-void
.end method

.method public getNeighboringCidsGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1413
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1414
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2303
    return-void
.end method

.method public getOutgoingCallerIdDisplayGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1345
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1346
    return-void
.end method

.method public getPOLCapability(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPOLCapability(Landroid/os/Message;)V

    .line 3276
    return-void
.end method

.method public getPOLCapabilityGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3288
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPOLCapability(Landroid/os/Message;)V

    .line 3289
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2404
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1442
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodesGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter

    .prologue
    .line 1594
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    .line 953
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2739
    return-void
.end method

.method public getPpuAndCurrencyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1789
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 1790
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3280
    return-void
.end method

.method public getPreferedOperatorListGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3293
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2369
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2373
    :goto_0
    return-void

    .line 2372
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPreferredNetworkTypeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1409
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1410
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2193
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicateState()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimIndicateStateGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1905
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1
    .parameter

    .prologue
    .line 1505
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 7

    .prologue
    const-wide/16 v5, -0x5

    .line 2878
    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_sim_setting"

    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2882
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS default SIM index in db is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 2886
    :cond_0
    const-string v0, "gsm.sim.inserted"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2887
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2888
    const/4 v0, 0x1

    .line 2896
    :goto_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final SMS default SIM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    return v0

    .line 2890
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2893
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2591
    return-void
.end method

.method public getSmscAddressGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1645
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1646
    return-void
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSpNameInEfSpn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpNameInEfSpn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3456
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1957
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .parameter

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    .line 3311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1323
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2814
    return-void
.end method

.method public getVtCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1859
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 1861
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2825
    return-void
.end method

.method public getVtCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1871
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 1872
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2833
    return-void
.end method

.method public getVtFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1879
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1880
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommandsGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 402
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 404
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    const-string/jumbo v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 407
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:Z

    .line 408
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:Z

    if-eqz v0, :cond_1

    .line 409
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:Z

    .line 412
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_0

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    goto :goto_1

    .line 419
    :pswitch_1
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 420
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 421
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 423
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 424
    aget v0, v0, v3

    if-ne v0, v2, :cond_0

    .line 426
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 434
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    if-nez v0, :cond_2

    .line 435
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 441
    const-string v0, "EVENT_DUAL_SIM_SWITCH_DONE sim1 radio off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 444
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 445
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 446
    const-string v0, "EVENT_DUAL_SIM_SWITCH_DONE sim2 radio off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 448
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()V

    .line 450
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 452
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 457
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 458
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 460
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 461
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :cond_5
    const-string v0, "Set preferred network mode failed, to use +ES3G and reset modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 465
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 466
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    goto/16 :goto_0

    .line 470
    :pswitch_4
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    goto/16 :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1262
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2723
    return-void
.end method

.method public hangupActiveCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1773
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1774
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2715
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2719
    return-void
.end method

.method public hangupAllExGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1769
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 1770
    return-void
.end method

.method public hangupAllGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 1766
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2393
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1429
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1430
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2397
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1433
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1434
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2945
    .line 2947
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 2949
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v0, :cond_2

    .line 2951
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    :cond_0
    invoke-interface {v2, v3, v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2964
    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    .line 2951
    goto :goto_0

    .line 2957
    :cond_2
    const/4 v0, 0x0

    .line 2958
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualChange3GAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2962
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2922
    .line 2924
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 2926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v0, :cond_2

    .line 2928
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:Ljava/lang/String;

    :cond_0
    invoke-interface {v2, v3, v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2941
    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    .line 2928
    goto :goto_0

    .line 2934
    :cond_2
    const/4 v0, 0x0

    .line 2935
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2939
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isCspPlmnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3334
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 1

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isIccCardProviderAsMvno(I)Z

    move-result v0

    return v0
.end method

.method public isIccCardProviderAsMvno(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3488
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isIccCardProviderAsMvno()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReadyGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isOperatorMvnoForEfPnn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForEfPnn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3480
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isOperatorMvnoForImsi(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3464
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1673
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 832
    if-nez p1, :cond_2

    .line 833
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 835
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSimInsert()Z
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 825
    if-nez p1, :cond_2

    .line 826
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 828
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 826
    goto :goto_0

    .line 828
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2587
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1642
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3391
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 3395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 3402
    if-eqz p2, :cond_1

    .line 3406
    if-nez p1, :cond_0

    .line 3407
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 3408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3427
    :goto_0
    return-void

    .line 3410
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 3411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto :goto_0

    .line 3417
    :cond_1
    if-nez p1, :cond_2

    .line 3418
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 3419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 3425
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    goto :goto_0

    .line 3421
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 3422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    goto :goto_1
.end method

.method public plugInNoSimSlot(I)V
    .locals 3
    .parameter

    .prologue
    .line 3434
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:I

    .line 3435
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:I

    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3438
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    .line 3440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3441
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 3448
    :goto_0
    return-void

    .line 3443
    :cond_0
    const-string/jumbo v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3445
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3446
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2440
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1479
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1480
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2452
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1493
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1494
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2583
    return-void
.end method

.method public queryCellBroadcastSmsActivationGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1636
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 1637
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2561
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1614
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1615
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 938
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2675
    return-void
.end method

.method public registerFoT53ClirlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1725
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1726
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2627
    return-void
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1678
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2106
    return-void
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1144
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1145
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2074
    return-void
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1112
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1113
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2025
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2026
    return-void
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1064
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1065
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2643
    return-void
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1693
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1694
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2122
    return-void
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1160
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1161
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2098
    return-void
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1136
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1137
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2090
    return-void
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1128
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1129
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2017
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2018
    return-void
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1056
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1057
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2667
    return-void
.end method

.method public registerForLineControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1717
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2042
    return-void
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1080
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1081
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2034
    return-void
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1073
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2759
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1809
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1810
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2767
    return-void
.end method

.method public registerForNetworkInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1817
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1818
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2009
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2010
    return-void
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1049
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2651
    return-void
.end method

.method public registerForNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1701
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1702
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2002
    return-void
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1041
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2659
    return-void
.end method

.method public registerForRedirectedNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1709
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1710
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2842
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2130
    return-void
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1168
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1169
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2058
    return-void
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1096
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1097
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2635
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1685
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1686
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 815
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2778
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2779
    return-void
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1825
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1826
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2114
    return-void
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1152
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1153
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2082
    return-void
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1120
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1121
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2066
    return-void
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2683
    return-void
.end method

.method public registerForT53AudioControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1734
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1993
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1994
    return-void
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1033
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2804
    return-void
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1850
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1851
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2796
    return-void
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1842
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1843
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2788
    return-void
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1834
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1835
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 2150
    return-void
.end method

.method public rejectCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1189
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 322
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3321
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2747
    return-void
.end method

.method public resetAccumulatedCallMeterGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1797
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 1798
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2329
    return-void
.end method

.method public selectNetworkManuallyGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1371
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1372
    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2854
    return-void
.end method

.method public sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1897
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1898
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2615
    return-void
.end method

.method public sendBurstDtmfGemini(Ljava/lang/String;IILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1665
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1666
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2228
    return-void
.end method

.method public sendDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1270
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1271
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 2054
    return-void
.end method

.method public sendUssdResponseGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1092
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3050
    .line 3051
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_0

    .line 3052
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :goto_0
    return v5

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3057
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3059
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3060
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3061
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3062
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 3064
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 3065
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3067
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    .line 3068
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3070
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3071
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3072
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3075
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3078
    if-eqz p1, :cond_3

    if-eq v8, p1, :cond_3

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    .line 3079
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3081
    :cond_4
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a(I)V

    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 3085
    goto/16 :goto_0

    .line 3075
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3086
    :cond_5
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2743
    return-void
.end method

.method public setAccumulatedCallMeterMaximumGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1793
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1794
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2436
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1475
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1476
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    .line 344
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3387
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2299
    return-void
.end method

.method public setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1340
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1342
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2317
    return-void
.end method

.method public setCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1360
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2456
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1497
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1498
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2460
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1501
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1502
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2573
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2578
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1626
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1627
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1631
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1632
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3378
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2448
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabledGemini(ZI)V

    .line 1490
    return-void
.end method

.method public setDefaultPhone(I)V
    .locals 1
    .parameter

    .prologue
    .line 331
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 332
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 327
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 840
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 842
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 844
    if-ne v0, v3, :cond_0

    .line 845
    const-string v0, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 846
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 847
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 850
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2850
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3504
    const/4 v0, 0x0

    .line 3505
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3506
    const/4 v0, 0x1

    .line 3508
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2703
    return-void
.end method

.method public setFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1753
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 1754
    return-void
.end method

.method public setGprsConnType(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 925
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 929
    return-void
.end method

.method public setGprsTransferTypeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 933
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2268
    return-void
.end method

.method public setLine1NumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1310
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1311
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2385
    return-void
.end method

.method public setMuteGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1421
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1422
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2325
    return-void
.end method

.method public setNetworkSelectionModeAutomaticGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1367
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1368
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2691
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1741
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1742
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2381
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1417
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1418
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2309
    return-void
.end method

.method public setOutgoingCallerIdDisplayGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1350
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1352
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3284
    return-void
.end method

.method public setPOLEntryGemini(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3297
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2751
    return-void
.end method

.method public setPpuAndCurrencyGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1801
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1802
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2332
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " default phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "RATMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Landroid/content/SharedPreferences;

    .line 2335
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Landroid/content/SharedPreferences;

    const-string v1, "ModeType"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    .line 2336
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_1

    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2343
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    if-eq v0, v5, :cond_0

    .line 2344
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    .line 2345
    const-string v0, "PHONE"

    const-string v1, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2348
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2366
    :goto_1
    return-void

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2350
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2351
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    if-ne v0, v3, :cond_3

    .line 2352
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2353
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 2355
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 2358
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    if-ne v0, v3, :cond_5

    .line 2359
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2360
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 2362
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1375
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "RATMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Landroid/content/SharedPreferences;

    .line 1377
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Landroid/content/SharedPreferences;

    const-string v1, "ModeType"

    const/16 v2, 0xff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    .line 1378
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmNetworkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    if-nez p3, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1406
    :goto_0
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1390
    if-ne p3, v3, :cond_3

    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    if-ne v0, v3, :cond_2

    .line 1392
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1393
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1395
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:I

    if-ne v0, v3, :cond_4

    .line 1399
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1400
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1402
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0
    .parameter

    .prologue
    .line 3375
    return-void
.end method

.method public setRadioMode(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 857
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 860
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_3

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Ljava/lang/String;)V

    .line 863
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    .line 885
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 890
    const-string v0, "Set to flight mode and reset Gemini gprs related context"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 894
    :cond_2
    return-void

    .line 865
    :cond_3
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:I

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 867
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 870
    if-eqz v0, :cond_6

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    if-eq p1, v3, :cond_4

    if-ne p1, v5, :cond_1

    .line 873
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 874
    if-ne p1, v3, :cond_5

    .line 875
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 876
    :cond_5
    if-ne p1, v5, :cond_1

    .line 877
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 881
    :cond_6
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter

    .prologue
    .line 897
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 898
    return-void

    .line 897
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 901
    if-eqz p2, :cond_0

    .line 902
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 910
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 912
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 920
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move-result v0

    .line 915
    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2599
    return-void
.end method

.method public setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1649
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1650
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2557
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1610
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1611
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2428
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1467
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1468
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2286
    return-void
.end method

.method public setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1328
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1329
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 3317
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2821
    return-void
.end method

.method public setVtCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1866
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1868
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2829
    return-void
.end method

.method public setVtCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1875
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2837
    return-void
.end method

.method public setVtFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1883
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 1884
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 2232
    return-void
.end method

.method public startDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1274
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1275
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 2236
    return-void
.end method

.method public stopDtmfGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1279
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 2154
    return-void
.end method

.method public switchHoldingAndActiveGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1193
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2631
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1681
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1682
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2110
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1148
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1149
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 2078
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1116
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1117
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2029
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2030
    return-void
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1068
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1069
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2647
    return-void
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1697
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1698
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 2126
    return-void
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1164
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1165
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 2102
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1140
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1141
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2094
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1132
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1133
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2021
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2022
    return-void
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1060
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1061
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2671
    return-void
.end method

.method public unregisterForLineControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1721
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1722
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2046
    return-void
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1084
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1085
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2038
    return-void
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1076
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1077
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2763
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1813
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1814
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2771
    return-void
.end method

.method public unregisterForNetworkInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1821
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 1822
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2013
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2014
    return-void
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1052
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1053
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2655
    return-void
.end method

.method public unregisterForNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1705
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1706
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2006
    return-void
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1044
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1045
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2663
    return-void
.end method

.method public unregisterForRedirectedNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1713
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1714
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2846
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2134
    return-void
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1173
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 2062
    return-void
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1100
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1101
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2639
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1689
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1690
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 819
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2782
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2783
    return-void
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1829
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 1830
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 2118
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1156
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1157
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2086
    return-void
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1124
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1125
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 2070
    return-void
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1108
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1109
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2687
    return-void
.end method

.method public unregisterForT53AudioControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1737
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1738
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2679
    return-void
.end method

.method public unregisterForT53ClirInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1729
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1730
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 1997
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1998
    return-void
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1037
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2808
    return-void
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1854
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1855
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2800
    return-void
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1846
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 1847
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2792
    return-void
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1838
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 1839
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2695
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1745
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1746
    return-void
.end method

.method public updateMobileData(I)V
    .locals 1
    .parameter

    .prologue
    .line 2861
    packed-switch p1, :pswitch_data_0

    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2870
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2873
    :goto_0
    return-void

    .line 2863
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    goto :goto_0

    .line 2866
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    goto :goto_0

    .line 2861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2416
    return-void
.end method

.method public updateServiceLocationGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1456
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 942
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1901
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1902
    return-void
.end method

.method public voiceAccept()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 2215
    return-void
.end method

.method public voiceAcceptGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 1258
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1249
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
