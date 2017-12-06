// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.web.admin;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.esupportail.sgc.domain.EsupNfcSgcJwsDevice;
import org.esupportail.sgc.web.admin.EsupNfcSgcJwsDeviceController;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect EsupNfcSgcJwsDeviceController_Roo_Controller {
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EsupNfcSgcJwsDeviceController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("esupnfcsgcjwsdevice", EsupNfcSgcJwsDevice.findEsupNfcSgcJwsDevice(id));
        uiModel.addAttribute("itemId", id);
        return "admin/jwsdevices/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EsupNfcSgcJwsDeviceController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("esupnfcsgcjwsdevices", EsupNfcSgcJwsDevice.findEsupNfcSgcJwsDeviceEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) EsupNfcSgcJwsDevice.countEsupNfcSgcJwsDevices() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("esupnfcsgcjwsdevices", EsupNfcSgcJwsDevice.findAllEsupNfcSgcJwsDevices(sortFieldName, sortOrder));
        }
        return "admin/jwsdevices/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EsupNfcSgcJwsDeviceController.update(@Valid EsupNfcSgcJwsDevice esupNfcSgcJwsDevice, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, esupNfcSgcJwsDevice);
            return "admin/jwsdevices/update";
        }
        uiModel.asMap().clear();
        esupNfcSgcJwsDevice.merge();
        return "redirect:/admin/jwsdevices/" + encodeUrlPathSegment(esupNfcSgcJwsDevice.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EsupNfcSgcJwsDeviceController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, EsupNfcSgcJwsDevice.findEsupNfcSgcJwsDevice(id));
        return "admin/jwsdevices/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EsupNfcSgcJwsDeviceController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EsupNfcSgcJwsDevice esupNfcSgcJwsDevice = EsupNfcSgcJwsDevice.findEsupNfcSgcJwsDevice(id);
        esupNfcSgcJwsDevice.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/jwsdevices";
    }
    
    void EsupNfcSgcJwsDeviceController.populateEditForm(Model uiModel, EsupNfcSgcJwsDevice esupNfcSgcJwsDevice) {
        uiModel.addAttribute("esupNfcSgcJwsDevice", esupNfcSgcJwsDevice);
    }
    
    String EsupNfcSgcJwsDeviceController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
